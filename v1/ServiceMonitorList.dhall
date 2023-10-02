let Kubernetes =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes

let ServiceMonitor =
        ./ServiceMonitor.dhall sha256:f0bee94fb4cffa7451a55571100c388542c65f86d99721aefe6026298d1958c7
      ? ./ServiceMonitor.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ListMeta.Type
        , items : Optional (List ServiceMonitor.Type)
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1"
      , kind = "ServiceMonitorList"
      , items = None (List ServiceMonitor.Type)
      }
    }
