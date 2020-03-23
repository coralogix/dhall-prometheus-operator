let ListMeta = (../imports.dhall).Kubernetes.ListMeta.Type

let Alertmanager = ./Alertmanager.dhall

let AlertmanagerList =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Optional ListMeta
          , items : Optional (List Alertmanager.Type)
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "AlertmanagerList"
          , metadata = None ListMeta
          , items = None (List Alertmanager.Type)
          }
      }

let test = AlertmanagerList::{=}

in  AlertmanagerList
