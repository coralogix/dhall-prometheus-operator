let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let Prometheus = ../../types/v1/Prometheus.dhall

in  { apiVersion =
        "monitoring.coreos.com/v1"
    , kind =
        "PrometheusList"
    , metadata =
        None Kubernetes.ListMeta
    , items =
        [] : List Prometheus
    }
