let Kubernetes = (../imports.dhall).Kubernetes

let ThanosSpec =
      { Type =
          { image : Optional Text
          , version : Optional Text
          , tag : Optional Text
          , sha : Optional Text
          , baseImage : Optional Text
          , resources : Optional Kubernetes.ResourceRequirements.Type
          , objectStorageConfig : Optional Kubernetes.SecretKeySelector.Type
          , listenLocal : Optional Bool
          }
      , default =
          { image = None Text
          , version = None Text
          , tag = None Text
          , sha = None Text
          , baseImage = None Text
          , resources = None Kubernetes.ResourceRequirements.Type
          , objectStorageConfig = None Kubernetes.SecretKeySelector.Type
          , listenLocal = None Bool
          }
      }

let test = ThanosSpec::{=}

in  ThanosSpec
