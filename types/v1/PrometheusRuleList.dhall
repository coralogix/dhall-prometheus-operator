let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let PrometheusRule = ./PrometheusRule.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Optional Kubernetes.meta.v1.ListMeta
      , items :
          List PrometheusRule
      }
    : Type
