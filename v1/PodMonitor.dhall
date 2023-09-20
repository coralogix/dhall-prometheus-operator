let Kubernetes =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes

let PodMonitorSpec =
        ./PodMonitorSpec.dhall sha256:0d27ac2419e5075e24c99593a9eebd5a751c17e13a7a1c34520215648e33d04e
      ? ./PodMonitorSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : PodMonitorSpec.Type
        }
    , default = { apiVersion = "monitoring.coreos.com/v1", kind = "PodMonitor" }
    }
