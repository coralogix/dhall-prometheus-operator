let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let PrometheusRuleSpec = ./PrometheusRuleSpec.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Kubernetes.ObjectMeta
      , spec :
          PrometheusRuleSpec
      }
    : Type
