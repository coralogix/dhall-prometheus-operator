let Kubernetes = (../imports.dhall).Kubernetes

let EmbeddedObjectMetadata = ./EmbeddedObjectMetadata.dhall

in  { Type =
        { metadata : Optional EmbeddedObjectMetadata.Type
        , spec : Optional Kubernetes.PersistentVolumeClaimSpec.Type
        , status : Optional Kubernetes.PersistentVolumeClaimStatus.Type
        }
    , default =
      { metadata = None EmbeddedObjectMetadata.Type
      , spec = None Kubernetes.PersistentVolumeClaimSpec.Type
      , status = None Kubernetes.PersistentVolumeClaimStatus.Type
      }
    }
