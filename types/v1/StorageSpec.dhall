let Kubernetes = (../../ImportTypes.dhall).Kubernetes

in    { emptyDir :
          Optional Kubernetes.core.v1.EmptyDirVolumeSource
      , volumeClaimTemplate :
          Optional { spec : Kubernetes.core.v1.PersistentVolumeClaimSpec }
      }
    : Type
