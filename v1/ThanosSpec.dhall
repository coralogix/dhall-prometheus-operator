let Kubernetes =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes

let TLSConfig =
        ./TLSConfig.dhall sha256:58054c5f17cbc2ae2bde2cf6acfec263045e9b841d8e60d0f5db152dffafa5cf
      ? ./TLSConfig.dhall

let ThanosSpec =
      { Type =
          { image : Optional Text
          , version : Optional Text
          , resources : Optional Kubernetes.ResourceRequirements.Type
          , objectStorageConfig : Optional Kubernetes.SecretKeySelector.Type
          , listenLocal : Optional Bool
          , tracingConfig : Optional Kubernetes.SecretKeySelector.Type
          , grpcServerTlsConfig : Optional TLSConfig.Type
          , logLevel : Optional Text
          , logFormat : Optional Text
          , minTime : Optional Text
          }
      , default =
        { image = None Text
        , version = None Text
        , resources = None Kubernetes.ResourceRequirements.Type
        , objectStorageConfig = None Kubernetes.SecretKeySelector.Type
        , listenLocal = None Bool
        , tracingConfig = None Kubernetes.SecretKeySelector.Type
        , grpcServerTlsConfig = None TLSConfig.Type
        , logLevel = None Text
        , logFormat = None Text
        , minTime = None Text
        }
      }

let test = ThanosSpec::{=}

in  ThanosSpec
