let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes.Type

let PodMetricsEndpoint = ./PodMetricsEndpoint.dhall

let NamespaceSelector = ./NamespaceSelector.dhall

in  { Type =
        { jobLabel : Optional Text
        , podTargetLabels : List Text
        , podMetricsEndpoints : List PodMetricsEndpoint.Type
        , selector : Kubernetes.LabelSelector
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
