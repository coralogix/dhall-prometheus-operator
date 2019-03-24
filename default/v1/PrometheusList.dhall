let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let Prometheus = ../../types/v1/Prometheus.dhall

let PrometheusList = ../../types/v1/PrometheusList.dhall

in    λ(_param : { items : List Prometheus })
    →   { apiVersion =
            "monitoring.coreos.com/v1"
        , kind =
            "PrometheusList"
        , metadata =
            None Kubernetes.meta.v1.ListMeta
        , items =
            _param.items
        }
      : PrometheusList
