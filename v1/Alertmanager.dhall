let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let ObjectMeta = Kubernetes.Type.ObjectMeta

let AlertmanagerSpec = ./AlertmanagerSpec.dhall

let AlertmanagerStatus = ./AlertmanagerStatus.dhall

let Alertmanager =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : ObjectMeta
          , spec : AlertmanagerSpec.Type
          , status : Optional AlertmanagerStatus.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "Alertmanager"
          , spec = AlertmanagerSpec.default
          , status = None AlertmanagerStatus.Type
          }
      }

let test =
      Alertmanager::{
      , metadata = Kubernetes.default.ObjectMeta ⫽ { name = "example" }
      }

in  Alertmanager
