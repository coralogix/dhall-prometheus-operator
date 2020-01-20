let Kubernetes = (../imports.dhall).Kubernetes

let ServiceMonitor = ./ServiceMonitor.dhall

let ServiceMonitorList =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Kubernetes.Type.ListMeta
          , items : List ServiceMonitor.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "ServiceMonitorList"
          , metadata = Kubernetes.default.ListMeta
          , items = [] : List ServiceMonitor.Type
          }
      }

let test = ServiceMonitorList::{=}

in  ServiceMonitorList
