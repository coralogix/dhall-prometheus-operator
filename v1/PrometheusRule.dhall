let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes.Type

let PrometheusRuleSpec = ./PrometheusRuleSpec.dhall

let PrometheusRule =
      { Type =
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

let test =
      let kubernetes = imports.Kubernetes.default
      
      in  PrometheusRule::{
          , metadata = kubernetes.ObjectMeta ⫽ { name = "example" }
          }

in  PrometheusRule
