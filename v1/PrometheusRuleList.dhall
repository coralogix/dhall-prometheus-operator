let Kubernetes = (../imports.dhall).Kubernetes

let PrometheusRule = ./PrometheusRule.dhall

let PrometheusRuleList =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Optional Kubernetes.ListMeta.Type
          , items : List PrometheusRule.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "PrometheusRuleList"
          , metadata = None Kubernetes.ListMeta.Type
          , items = [] : List PrometheusRule.Type
          }
      }

let test = PrometheusRuleList::{=}

in  PrometheusRuleList
