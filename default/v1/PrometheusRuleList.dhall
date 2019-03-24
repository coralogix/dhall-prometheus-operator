let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let PrometheusRule = ../../types/v1/PrometheusRule.dhall

let PrometheusRuleList = ../../types/v1/PrometheusRuleList.dhall

in    λ(_param : { items : List PrometheusRule })
    →   { apiVersion =
            "monitoring.coreos.com/v1"
        , kind =
            "PrometheusRuleList"
        , metadata =
            None Kubernetes.meta.v1.ListMeta
        , items =
            _param.items
        }
      : PrometheusRuleList
