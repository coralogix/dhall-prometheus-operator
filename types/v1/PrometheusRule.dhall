let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let PrometheusRuleSpec = ./PrometheusRuleSpec.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Optional Kubernetes.meta.v1.ObjectMeta
      , spec :
          PrometheusRuleSpec
      }
    : Type
