let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let PrometheusRule = ./PrometheusRule.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Optional Kubernetes.ListMeta
      , items :
          List PrometheusRule
      }
    : Type
