let ListMeta = (../imports.dhall).Kubernetes.ListMeta

let Alertmanager = ./Alertmanager.dhall

let AlertmanagerList =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Optional ListMeta.Type
          , items : List Alertmanager.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "AlertmanagerList"
          , metadata = None ListMeta.Type
          , items = [] : List Alertmanager.Type
          }
      }

let test = AlertmanagerList::{=}

in  AlertmanagerList
