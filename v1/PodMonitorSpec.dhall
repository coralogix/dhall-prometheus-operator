let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let PodMetricsEndpoint = ./PodMetricsEndpoint.dhall

let NamespaceSelector = ./NamespaceSelector.dhall

in  { Type =
        { jobLabel : Optional Text
        , podTargetLabels : Optional (List Text)
        , podMetricsEndpoints : Optional (List PodMetricsEndpoint.Type)
        , selector : Kubernetes.LabelSelector.Type
        , namespaceSelector : Optional NamespaceSelector
        , sampleLimit : Optional Natural
        }
    , default =
      { jobLabel = None Text
      , podTargetLabels = None (List Text)
      , namespaceSelector = None NamespaceSelector
      , sampleLimit = None Natural
      }
    }
