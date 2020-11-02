let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerConfigSpec = ./AlertmanagerConfigSpec.dhall

let AlertmanagerConfig = ./AlertmanagerConfig.dhall

let AlertmanagerConfigList =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Optional Kubernetes.ObjectMeta.Type
          , items : List AlertmanagerConfig.Type
          }
      , default =
        { apiVersion = "monitoring.coreos.com/v1"
        , kind = "AlertmanagerConfigList"
        , metadata = None Kubernetes.ObjectMeta.Type
        }
      }

let test = AlertmanagerConfigList::{ items = [] : List AlertmanagerConfig.Type }

in  AlertmanagerConfigList
