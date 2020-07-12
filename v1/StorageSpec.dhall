let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let VolumeClaimTemplate = ./VolumeClaimTemplate.dhall

in  { Type =
        { EmptyDir : Optional  Kubernetes.EmptyDirVolumeSource.Type 
        , VolumeClaimTemplate :  Optional VolumeClaimTemplate.Type
        , disableMountSubPath :  Optional Bool
        }
    , default =
        { EmptyDir = None Kubernetes.EmptyDirVolumeSource.Type 
        , VolumeClaimTemplate = None VolumeClaimTemplate.Type
        , disableMountSubPath = None Bool
        }
    }




