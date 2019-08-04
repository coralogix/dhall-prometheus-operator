let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let PrometheusRule = ../../types/v1/PrometheusRule.dhall

in  { apiVersion =
        "monitoring.coreos.com/v1"
    , kind =
        "PrometheusRuleList"
    , metadata =
        None Kubernetes.ListMeta
    , items =
        [] : List PrometheusRule
    }
