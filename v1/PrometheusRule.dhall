let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let PrometheusRuleSpec = ./PrometheusRuleSpec.dhall

let PrometheusRule =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Kubernetes.ObjectMeta.Type
          , spec : PrometheusRuleSpec.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "PrometheusRule"
          , metadata = Kubernetes.ObjectMeta.Type
          , spec = PrometheusRuleSpec::{=}
          }
      }

let test =
      PrometheusRule::{ metadata = Kubernetes.ObjectMeta::{ name = "example" } }

in  PrometheusRule
