let Kubernetes = (../imports.dhall).Kubernetes

let PodMonitor = ./PodMonitor.dhall

let PodMonitorList =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Kubernetes.ListMeta.Type
          , items : List PodMonitor.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "PodMonitorList"
          , items = [] : List PodMonitor.Type
          }
      }

let test = PodMonitorList::{ metadata = Kubernetes.ListMeta::{=} }

in  PodMonitorList
