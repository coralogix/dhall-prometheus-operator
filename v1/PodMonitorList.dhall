let Kubernetes =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes

let PodMonitor =
        ./PodMonitor.dhall sha256:8694053f14ea9534f2cd36b0f6f9244a8d59297f68e12f28ef260b411e4e992a
      ? ./PodMonitor.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ListMeta.Type
        , items : Optional (List PodMonitor.Type)
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1", kind = "PodMonitorList" }
    }
