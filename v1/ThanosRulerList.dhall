let ListMeta = (../imports.dhall).Kubernetes.ListMeta.Type

let ThanosRuler = ./ThanosRuler.dhall

let ThanosRulerList =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Optional ListMeta
          , items : Optional (List ThanosRuler.Type)
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "ThanosRulerList"
          , metadata = None ListMeta
          , items = None (List ThanosRuler.Type)
          }
      }

let test = ThanosRulerList::{=}

in  ThanosRulerList
