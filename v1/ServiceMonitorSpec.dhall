let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes.Type

let Endpoint = ./Endpoint.dhall

let NamespaceSelector = ./NamespaceSelector.dhall

let ServiceMonitorSpec =
      { Type =
          { jobLabel : Optional Text
          , targetLabels : List Text
          , podTargetLabels : List Text
          , endpoints : List Endpoint.Union
          , selector : Kubernetes.LabelSelector
          , namespaceSelector : Optional NamespaceSelector
          , sampleLimit : Optional Natural
          }
      , default =
          { jobLabel = None Text
          , targetLabels = [] : List Text
          , podTargetLabels = [] : List Text
          , endpoints = [] : List Endpoint.Union
          , namespaceSelector = None NamespaceSelector
          , sampleLimit = None Natural
          }
      }

let test =
      let kubernetes = imports.Kubernetes.default
      
      in  ServiceMonitorSpec::{ selector = kubernetes.LabelSelector }

in  ServiceMonitorSpec
