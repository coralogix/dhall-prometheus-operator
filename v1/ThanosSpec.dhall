let Kubernetes = (../imports.dhall).Kubernetes

let TLSConfig = ./TLSConfig.dhall

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
