let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerSpec = ./AlertmanagerSpec.dhall

let AlertmanagerStatus = ./AlertmanagerStatus.dhall

let Alertmanager =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Kubernetes.ObjectMeta.Type
          , spec : AlertmanagerSpec.Type
          , status : Optional AlertmanagerStatus.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "Alertmanager"
          , spec = AlertmanagerSpec::{=}
          , status = None AlertmanagerStatus.Type
          }
      }

let test =
      Alertmanager::{ metadata = Kubernetes.ObjectMeta::{ name = "example" } }

in  Alertmanager
