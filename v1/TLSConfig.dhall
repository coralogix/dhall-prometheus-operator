let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let SecretOrConfigMap =
        ./SecretOrConfigMap.dhall sha256:c9d8cdd7a4b7d926fca0e9b1b89a26cb59a694366d9a9479297929ce180df5f1
      ? ./SecretOrConfigMap.dhall

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
