let Kubernetes = (../imports.dhall).Kubernetes

let EmbeddedObjectMetadata = ./EmbeddedObjectMetadata.dhall


in  { Type =
        { metadata : Optional EmbeddedObjectMetadata.Type
        , spec : Optional Kubernetes.PersistentVolumeClaimSpec
        , status : Optional Kubernetes.PersistentVolumeClaimStatus
        }
    , default =
      { metadata = None EmbeddedObjectMetadata.Type
      , spec = None Kubernetes.PersistentVolumeClaimSpec
      , status = None Kubernetes.PersistentVolumeClaimStatus
      }
    }
