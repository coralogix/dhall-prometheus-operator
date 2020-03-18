let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let VolumeClaimTemplate = ./VolumeClaimTemplate.dhall

let StorageSpec =
      < EmptyDir : { emptyDir : Kubernetes.EmptyDirVolumeSource.Type }
      | VolumeClaimTemplate : { volumeClaimTemplate : VolumeClaimTemplate.Type }
      >

let test =
      let VolumeClaimTemplate = ./VolumeClaimTemplate.dhall

      let VolumeClaimTemplateSpec = ./VolumeClaimTemplateSpec.dhall

      in  { emptyDir =
              StorageSpec.EmptyDir
                { emptyDir = Kubernetes.EmptyDirVolumeSource::{=} }
          , volumeClaimTemplate =
              StorageSpec.VolumeClaimTemplate
                { volumeClaimTemplate = VolumeClaimTemplate::{
                  , spec = VolumeClaimTemplateSpec::{=}
                  }
                }
          }

in  StorageSpec
