let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let BasicAuth = ./BasicAuth.dhall

let SafeTLSConfig = ./SafeTLSConfig.dhall

let HTTPConfig =
      { Type =
          { basicAuth : Optional BasicAuth.Type
          , bearerTokenSecret : Optional Kubernetes.SecretKeySelector.Type
          , tlsConfig : Optional SafeTLSConfig.Type
          , proxyURL : Optional Text
          }
      , default =
        { basicAuth = None BasicAuth.Type
        , bearerTokenSecret = None Kubernetes.SecretKeySelector.Type
        , tlsConfig = None SafeTLSConfig.Type
        , proxyURL = None Text
        }
      }

in  HTTPConfig
