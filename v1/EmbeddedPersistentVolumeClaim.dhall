let Kubernetes =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes

let EmbeddedObjectMetadata =
        ./EmbeddedObjectMetadata.dhall sha256:5a9eb9672ed429bd9d7e9aa333c30aef5c8e44ade302895f8af57f286248c8fa
      ? ./EmbeddedObjectMetadata.dhall

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
