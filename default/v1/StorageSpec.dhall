let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let StorageSpec = ../../types/v1/StorageSpec.dhall

let VolumeClaimTemplate = ../../types/v1/VolumeClaimTemplate.dhall

in    { emptyDir =
          None Kubernetes.core.v1.EmptyDirVolumeSource
      , volumeClaimTemplate =
          None VolumeClaimTemplate
      }
    : StorageSpec
