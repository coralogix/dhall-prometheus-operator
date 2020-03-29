let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let SecretOrConfigMap = ./SecretOrConfigMap.dhall

let TLSConfig =
      { Type =
          { caFile : Optional Text
          , ca : Optional SecretOrConfigMap.Type
          , certFile : Optional Text
          , cert : Optional SecretOrConfigMap.Type
          , keyFile : Optional Text
          , keySecret : Optional Kubernetes.SecretKeySelector.Type
          , serverName : Optional Text
          , insecureSkipVerify : Optional Bool
          }
      , default =
        { caFile = None Text
        , ca = None SecretOrConfigMap.Type
        , certFile = None Text
        , cert = None SecretOrConfigMap.Type
        , keyFile = None Text
        , keySecret = None Kubernetes.SecretKeySelector.Type
        , serverName = None Text
        , insecureSkipVerify = None Bool
        }
      }

let test = TLSConfig::{=}

in  TLSConfig
