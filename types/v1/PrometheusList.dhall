let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let Prometheus = ./Prometheus.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Optional Kubernetes.ListMeta
      , items :
          List Prometheus
      }
    : Type
