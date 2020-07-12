let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let EmbeddedPersistentVolumeClaim = ./EmbeddedPersistentVolumeClaim.dhall

in  { Type =
        { EmptyDir : Optional  Kubernetes.EmptyDirVolumeSource.Type 
        , VolumeClaimTemplate :  Optional EmbeddedPersistentVolumeClaim.Type
        , disableMountSubPath :  Optional Bool
        }
    , default =
        { EmptyDir = None Kubernetes.EmptyDirVolumeSource.Type 
        , VolumeClaimTemplate = None EmbeddedPersistentVolumeClaim.Type
        , disableMountSubPath = None Bool
        }
    }
