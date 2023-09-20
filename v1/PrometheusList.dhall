let Kubernetes =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes

let Prometheus =
        ./Prometheus.dhall sha256:d06554a7113406b22d168e2c083bf61b7faebcdad774f68ccb98d30b3300f049
      ? ./Prometheus.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ListMeta.Type
        , items : Optional (List Prometheus.Type)
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1", kind = "PrometheusList" }
    }
