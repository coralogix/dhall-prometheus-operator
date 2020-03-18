let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let PodMetricsEndpoint = ./PodMetricsEndpoint.dhall

let NamespaceSelector = ./NamespaceSelector.dhall

let PodMonitorSpec =
      { Type =
          { jobLabel : Optional Text
          , podTargetLabels : List Text
          , podMetricsEndpoints : List PodMetricsEndpoint.Type
          , selector : Kubernetes.LabelSelector.Type
          , namespaceSelector : Optional NamespaceSelector
          , sampleLimit : Optional Natural
          }
      , default =
          { jobLabel = None Text
          , podTargetLabels = [] : List Text
          , namespaceSelector = None NamespaceSelector
          , sampleLimit = None Natural
          }
      }

let test =
      PodMonitorSpec::{
      , podMetricsEndpoints = [ PodMetricsEndpoint::{=} ]
      , selector = Kubernetes.LabelSelector::{=}
      }

in  PodMonitorSpec
