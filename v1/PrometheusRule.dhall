let Kubernetes = (../imports.dhall).Kubernetes.Type

let PrometheusRuleSpec = ./PrometheusRuleSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta
        , spec : PrometheusRuleSpec.Type
        }
    , default =
        { apiVersion = "monitoring.coreos.com/v1"
        , kind = "PrometheusRule"
        , metadata = Kubernetes.ObjectMeta
        , spec = PrometheusRuleSpec.default
        }
    }
