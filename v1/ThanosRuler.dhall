let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let ThanosRulerSpec = ./ThanosRulerSpec.dhall

let ThanosRulerStatus = ./ThanosRulerStatus.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : ThanosRulerSpec.Type
        , status : Optional ThanosRulerStatus.Type
        }
    , default =
        { apiVersion = "monitoring.coreos.com/v1"
        , kind = "ThanosRuler"
        , status = None ThanosRulerStatus.Type
        }
    }
