let Kubernetes = (../imports.dhall).Kubernetes.Type

let ThanosSpec =
      { Type =
          { image : Optional Text
          , version : Optional Text
          , tag : Optional Text
          , sha : Optional Text
          , baseImage : Optional Text
          , resources : Optional Kubernetes.ResourceRequirements
          , objectStorageConfig : Optional Kubernetes.SecretKeySelector
          , listenLocal : Optional Bool
          }
      , default =
          { image = None Text
          , version = None Text
          , tag = None Text
          , sha = None Text
          , baseImage = None Text
          , resources = None Kubernetes.ResourceRequirements
          , objectStorageConfig = None Kubernetes.SecretKeySelector
          , listenLocal = None Bool
          }
      }

let test = ThanosSpec::{=}

in  ThanosSpec
