let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let VolumeClaimTemplateSpec = ../../types/v1/VolumeClaimTemplateSpec.dhall

in    { accessModes =
          None (List Text)
      , resources =
          None Kubernetes.core.v1.ResourceRequirements
      , selector =
          None Kubernetes.meta.v1.LabelSelector
      , storageClassName =
          None Text
      , volumeMode =
          None Text
      , volumeName =
          None Text
      }
    : VolumeClaimTemplateSpec
