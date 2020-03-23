let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let VolumeClaimTemplate = ./VolumeClaimTemplate.dhall

let StorageSpec =
      < EmptyDir : { emptyDir : Kubernetes.EmptyDirVolumeSource.Type }
      | VolumeClaimTemplate : { volumeClaimTemplate : VolumeClaimTemplate.Type }
      >

in  StorageSpec
