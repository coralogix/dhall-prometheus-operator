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



<<<<<<< HEAD
=======
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



>>>>>>> a92bacb22c20940bcd84ca309ba930a943a4844b

