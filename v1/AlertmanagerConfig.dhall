let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerConfigSpec = ./AlertmanagerConfigSpec.dhall

let AlertmanagerConfig =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Optional Kubernetes.ObjectMeta.Type
          , spec : AlertmanagerConfigSpec.Type
          }
      , default =
        { apiVersion = "monitoring.coreos.com/v1"
        , kind = "AlertmanagerConfig"
        , metadata = None Kubernetes.ObjectMeta.Type
        }
      }

let test = AlertmanagerConfig::{ spec = AlertmanagerConfigSpec::{=} }

in  AlertmanagerConfig
