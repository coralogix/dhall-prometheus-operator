let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes.Type

let VolumeClaimTemplate = ./VolumeClaimTemplate.dhall

let StorageSpec =
      < EmptyDir : { emptyDir : Kubernetes.EmptyDirVolumeSource }
      | VolumeClaimTemplate : { volumeClaimTemplate : VolumeClaimTemplate.Type }
      >

let test =
      let kubernetes = imports.Kubernetes.default
      
      let VolumeClaimTemplate = ./VolumeClaimTemplate.dhall
      
      let VolumeClaimTemplateSpec = ./VolumeClaimTemplateSpec.dhall
      
      in  { emptyDir =
              StorageSpec.EmptyDir
                { emptyDir = kubernetes.EmptyDirVolumeSource }
          , volumeClaimTemplate =
              StorageSpec.VolumeClaimTemplate
                { volumeClaimTemplate =
                    VolumeClaimTemplate::{ spec = VolumeClaimTemplateSpec::{=} }
                }
          }

in  StorageSpec
