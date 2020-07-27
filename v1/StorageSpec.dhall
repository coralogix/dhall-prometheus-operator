let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let EmbeddedPersistentVolumeClaim = ./EmbeddedPersistentVolumeClaim.dhall

let Common = { disableMountSubPath : Optional Bool }

let EmptyDir = Common ⩓ { emptyDir : Kubernetes.EmptyDirVolumeSource.Type }

let VolumeClaimTemplate =
      Common ⩓ { volumeClaimTemplate : EmbeddedPersistentVolumeClaim.Type }

let common = { disableMountSubPath = None Bool }

let StorageSpec =
      { Type =
          < EmptyDir : EmptyDir | VolumeClaimTemplate : VolumeClaimTemplate >
      , EmptyDir = { Type = EmptyDir, default = common }
      , VolumeClaimTemplate = { Type = VolumeClaimTemplate, default = common }
      }

let test =
      let Kubernetes = (../imports.dhall).Kubernetes

      let EmbeddedPersistentVolumeClaim = ./EmbeddedPersistentVolumeClaim.dhall

      in  { emptyDir =
              StorageSpec.Type.EmptyDir
                StorageSpec.EmptyDir::{
                , disableMountSubPath = Some True
                , emptyDir = Kubernetes.EmptyDirVolumeSource::{=}
                }
          , volumeClaimTemplate =
              StorageSpec.Type.VolumeClaimTemplate
                StorageSpec.VolumeClaimTemplate::{
                , disableMountSubPath = Some True
                , volumeClaimTemplate = EmbeddedPersistentVolumeClaim::{=}
                }
          }

in  StorageSpec
