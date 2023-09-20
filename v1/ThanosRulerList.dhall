let ListMeta =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes.ListMeta.Type

let ThanosRuler =
        ./ThanosRuler.dhall sha256:a1862c8b05438a4255d5194500eeccecb3940a3b06a451ec9dd2882a3ccca335
      ? ./ThanosRuler.dhall

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
