let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let PrometheusRuleSpec = ./PrometheusRuleSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : PrometheusRuleSpec.Type
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1", kind = "PrometheusRule" }
    }
