let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes.Type

let ServiceMonitorSpec = ./ServiceMonitorSpec.dhall

let ServiceMonitor =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Kubernetes.ObjectMeta
          , spec : ServiceMonitorSpec.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "ServiceMonitor"
          , metadata = Kubernetes.ObjectMeta
          , spec = ServiceMonitorSpec.default
          }
      }

let test =
      let kubernetes = imports.Kubernetes.default
      
      let ServiceMonitorSpec = ./ServiceMonitorSpec.dhall
      
      in  ServiceMonitor::{
          , metadata = kubernetes.ObjectMeta ⫽ { name = "example" }
          , spec = ServiceMonitorSpec::{ selector = kubernetes.LabelSelector }
          }

in  ServiceMonitor
