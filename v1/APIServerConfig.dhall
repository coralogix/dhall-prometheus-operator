let BasicAuth = ./BasicAuth.dhall

let TLSConfig = ./TLSConfig.dhall

let Common = { host : Text, tlsConfig : Optional TLSConfig.Type }

let BasicAuth = Common ⩓ { basicAuth : BasicAuth.Type }

let BearerToken = Common ⩓ { bearerToken : Text }

let BearerTokenFile = Common ⩓ { bearerTokenFile : Text }

let common = { tlsConfig = None TLSConfig.Type }

let APIServerConfig =
      { Type =
          < BasicAuth : BasicAuth
          | BearerToken : BearerToken
          | BearerTokenFile : BearerTokenFile
          >
      , BasicAuth = { Type = BasicAuth, default = common }
      , BearerToken = { Type = BearerToken, default = common }
      , BearerTokenFile = { Type = BearerTokenFile, default = common }
      }

let test =
      let Kubernetes = (../imports.dhall).Kubernetes

      let BasicAuth = ./BasicAuth.dhall

      in  { basicAuth =
              APIServerConfig.Type.BasicAuth
                APIServerConfig.BasicAuth::{
                , host = "example.com"
                , basicAuth = BasicAuth::{
                  , username = Kubernetes.SecretKeySelector::{
                    , key = "example-username-key"
                    }
                  , password = Kubernetes.SecretKeySelector::{
                    , key = "example-password-key"
                    }
                  }
                }
          , bearerToken =
              APIServerConfig.Type.BearerToken
                APIServerConfig.BearerToken::{
                , host = "example.com"
                , bearerToken = "example"
                }
          , bearerTokenFile =
              APIServerConfig.Type.BearerTokenFile
                APIServerConfig.BearerTokenFile::{
                , host = "example.com"
                , bearerTokenFile = "path/to/example"
                }
          }

in  APIServerConfig
