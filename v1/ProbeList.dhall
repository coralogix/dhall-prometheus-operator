let Kubernetes =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes

let Probe =
        ./Probe.dhall sha256:a6caef579f87c5a4746de44abaf6ed11cab900136c9bd046106625be5cb7f5dc
      ? ./Probe.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ListMeta.Type
        , items : Optional (List Probe.Type)
        }
    , default = { apiVersion = "monitoring.coreos.com/v1", kind = "ProbeList" }
    }
