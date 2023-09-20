let ListMeta =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes.ListMeta.Type

let Alertmanager =
        ./Alertmanager.dhall sha256:009ca2c566ca0d356b2ac37a79a14fe0e26b19870d02f7ebe7a436189e14098b
      ? ./Alertmanager.dhall

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
