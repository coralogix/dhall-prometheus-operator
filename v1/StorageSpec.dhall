let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let EmbeddedPersistentVolumeClaim =
        ./EmbeddedPersistentVolumeClaim.dhall sha256:b43d5e1c1a395aea5e59ed84fbd7e9e5162f1aef3bf8755f45823363ede4daa3
      ? ./EmbeddedPersistentVolumeClaim.dhall

let Common = { disableMountSubPath : Optional Bool }

let EmptyDir =
      Common ⩓ { emptyDir : Optional Kubernetes.EmptyDirVolumeSource.Type }

let VolumeClaimTemplate =
        Common
      ⩓ { volumeClaimTemplate : Optional EmbeddedPersistentVolumeClaim.Type }

let common = { disableMountSubPath = None Bool }

let StorageSpec =
      { Type =
          < EmptyDir : EmptyDir | VolumeClaimTemplate : VolumeClaimTemplate >
      , EmptyDir = { Type = EmptyDir, default = common }
      , VolumeClaimTemplate = { Type = VolumeClaimTemplate, default = common }
      }

let test =
      let Kubernetes =
            (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
              ? ../imports.dhall
            ).Kubernetes

      let EmbeddedPersistentVolumeClaim =
              ./EmbeddedPersistentVolumeClaim.dhall sha256:b43d5e1c1a395aea5e59ed84fbd7e9e5162f1aef3bf8755f45823363ede4daa3
            ? ./EmbeddedPersistentVolumeClaim.dhall

      in  { emptyDir =
              StorageSpec.Type.EmptyDir
                StorageSpec.EmptyDir::{
                , disableMountSubPath = Some True
                , emptyDir = Some Kubernetes.EmptyDirVolumeSource::{=}
                }
          , volumeClaimTemplate =
              StorageSpec.Type.VolumeClaimTemplate
                StorageSpec.VolumeClaimTemplate::{
                , disableMountSubPath = Some True
                , volumeClaimTemplate = Some EmbeddedPersistentVolumeClaim::{=}
                }
          }

in  StorageSpec
