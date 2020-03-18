let Kubernetes = (../imports.dhall).Kubernetes

let PodMetricsEndpoint = ./PodMetricsEndpoint.dhall

let PodMonitorSpec = ./PodMonitorSpec.dhall

let PodMonitor =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Kubernetes.ObjectMeta.Type
          , spec : PodMonitorSpec.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1", kind = "PodMonitor" }
      }

let test =
      PodMonitor::{
      , metadata = Kubernetes.ObjectMeta::{ name = "example" }
      , spec = PodMonitorSpec::{
        , podMetricsEndpoints = [ PodMetricsEndpoint::{=} ]
        , selector = Kubernetes.LabelSelector::{=}
        }
      }

in  PodMonitor
