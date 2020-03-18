let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let ServiceMonitorSpec = ./ServiceMonitorSpec.dhall

let ServiceMonitor =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Kubernetes.ObjectMeta.Type
          , spec : ServiceMonitorSpec.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1", kind = "ServiceMonitor" }
      }

let test =
      let ServiceMonitorSpec = ./ServiceMonitorSpec.dhall

      in  ServiceMonitor::{
          , metadata = Kubernetes.ObjectMeta::{ name = "example" }
          , spec = ServiceMonitorSpec::{
            , selector = Kubernetes.LabelSelector::{=}
            }
          }

in  ServiceMonitor
