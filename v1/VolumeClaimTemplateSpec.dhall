let Kubernetes = (../imports.dhall).Kubernetes

let VolumeClaimTemplateSpec =
      { Type =
          { accessModes : List Text
          , resources : Optional Kubernetes.ResourceRequirements.Type
          , selector : Optional Kubernetes.LabelSelector.Type
          , storageClassName : Optional Text
          , volumeMode : Optional Text
          , volumeName : Optional Text
          }
      , default =
          { accessModes = [] : List Text
          , resources = None Kubernetes.ResourceRequirements.Type
          , selector = None Kubernetes.LabelSelector.Type
          , storageClassName = None Text
          , volumeMode = None Text
          , volumeName = None Text
          }
      }

let test = VolumeClaimTemplateSpec::{=}

in  VolumeClaimTemplateSpec
