let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let SecretOrConfigMap = ./SecretOrConfigMap.dhall

let SafeTLSConfig =
      { Type =
          { ca : Optional SecretOrConfigMap.Type
          , cert : Optional SecretOrConfigMap.Type
          , keySecret : Optional Kubernetes.SecretKeySelector.Type
          , serverName : Optional Text
          , insecureSkipVerify : Optional Bool
          }
      , default =
        { ca = None SecretOrConfigMap.Type
        , cert = None SecretOrConfigMap.Type
        , keySecret = None Kubernetes.SecretKeySelector.Type
        , serverName = None Text
        , insecureSkipVerify = None Bool
        }
      }

in  SafeTLSConfig
