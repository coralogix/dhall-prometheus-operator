let BasicAuth =
        ./BasicAuth.dhall sha256:2ce5199f94352d1293242b1e97ab6bad6c29f34d8df163676c4487e3c5dae3af
      ? ./BasicAuth.dhall

let TLSConfig =
        ./TLSConfig.dhall sha256:58054c5f17cbc2ae2bde2cf6acfec263045e9b841d8e60d0f5db152dffafa5cf
      ? ./TLSConfig.dhall

let Common = { host : Text, tlsConfig : Optional TLSConfig.Type }

let BasicAuth = Common ⩓ { basicAuth : Optional BasicAuth.Type }

let BearerToken = Common ⩓ { bearerToken : Optional Text }

let BearerTokenFile = Common ⩓ { bearerTokenFile : Optional Text }

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
      let Kubernetes =
            (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
              ? ../imports.dhall
            ).Kubernetes

      let BasicAuth =
              ./BasicAuth.dhall sha256:2ce5199f94352d1293242b1e97ab6bad6c29f34d8df163676c4487e3c5dae3af
            ? ./BasicAuth.dhall

      in  { basicAuth =
              APIServerConfig.Type.BasicAuth
                APIServerConfig.BasicAuth::{
                , host = "example.com"
                , basicAuth = Some BasicAuth::{
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
                , bearerToken = Some "example"
                }
          , bearerTokenFile =
              APIServerConfig.Type.BearerTokenFile
                APIServerConfig.BearerTokenFile::{
                , host = "example.com"
                , bearerTokenFile = Some "path/to/example"
                }
          }

in  APIServerConfig
