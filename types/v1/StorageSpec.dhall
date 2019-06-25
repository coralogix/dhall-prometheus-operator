let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let VolumeClaimTemplate = ./VolumeClaimTemplate.dhall

in    { emptyDir :
          Optional Kubernetes.core.v1.EmptyDirVolumeSource
      , volumeClaimTemplate :
          Optional VolumeClaimTemplate
      }
    : Type
