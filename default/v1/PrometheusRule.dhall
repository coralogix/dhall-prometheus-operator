let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let PrometheusRule = ../../types/v1/PrometheusRule.dhall

let PrometheusRuleSpec = ../../types/v1/PrometheusRuleSpec.dhall

in    λ(_param : { spec : PrometheusRuleSpec })
    →   { apiVersion =
            "monitoring.coreos.com/v1"
        , kind =
            "PrometheusRule"
        , metadata =
            None Kubernetes.meta.v1.ObjectMeta
        , spec =
            _param.spec
        }
      : PrometheusRule
