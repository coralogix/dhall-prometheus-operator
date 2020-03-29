let Kubernetes = (../imports.dhall).Kubernetes

let PrometheusRule = ./PrometheusRule.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ListMeta.Type
        , items : Optional (List PrometheusRule.Type)
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1", kind = "PrometheusRuleList" }
    }
