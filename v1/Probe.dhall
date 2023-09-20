let Kubernetes =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes

let ProbeSpec =
        ./ProbeSpec.dhall sha256:8acd59f1430e2d0f784d364d7d64bf5646dad139f8cb4bd8c5810b22ee447381
      ? ./ProbeSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : ProbeSpec.Type
        }
    , default = { apiVersion = "monitoring.coreos.com/v1", kind = "Probe" }
    }
