let Kubernetes = (../imports.dhall).Kubernetes

let Prometheus = ./Prometheus.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ListMeta.Type
        , items : Optional (List Prometheus.Type)
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1", kind = "PrometheusList" }
    }
