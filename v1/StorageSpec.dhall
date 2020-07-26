let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let EmbeddedPersistentVolumeClaim = ./EmbeddedPersistentVolumeClaim.dhall

let StorageSpec =
      < EmptyDir : { emptyDir : Kubernetes.EmptyDirVolumeSource.Type }
      | VolumeClaimTemplate :
          { volumeClaimTemplate : EmbeddedPersistentVolumeClaim.Type }
      >

in  StorageSpec
