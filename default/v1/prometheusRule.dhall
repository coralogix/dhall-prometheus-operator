let Kubernetes = (../../Imports.dhall).Kubernetes

in  { apiVersion =
        "monitoring.coreos.com/v1"
    , kind =
        "PrometheusRule"
    , metadata =
        Kubernetes.ObjectMeta
    , spec =
        ./PrometheusRuleSpec.dhall
    }
