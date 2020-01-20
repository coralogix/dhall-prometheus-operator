let Kubernetes = (../imports.dhall).Kubernetes.Type

let VolumeClaimTemplateSpec =
      { Type =
          { accessModes : List Text
          , resources : Optional Kubernetes.ResourceRequirements
          , selector : Optional Kubernetes.LabelSelector
          , storageClassName : Optional Text
          , volumeMode : Optional Text
          , volumeName : Optional Text
          }
      , default =
          { accessModes = [] : List Text
          , resources = None Kubernetes.ResourceRequirements
          , selector = None Kubernetes.LabelSelector
          , storageClassName = None Text
          , volumeMode = None Text
          , volumeName = None Text
          }
      }

let test = VolumeClaimTemplateSpec::{=}

in  VolumeClaimTemplateSpec
