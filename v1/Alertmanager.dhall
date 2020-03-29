let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerSpec = ./AlertmanagerSpec.dhall

let AlertmanagerStatus = ./AlertmanagerStatus.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : AlertmanagerSpec.Type
        , status : Optional AlertmanagerStatus.Type
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1"
      , kind = "Alertmanager"
      , status = None AlertmanagerStatus.Type
      }
    }
