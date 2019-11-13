let Kubernetes = (../imports.dhall).Kubernetes.Type

let Endpoint = ./Endpoint.dhall

let NamespaceSelector = ./NamespaceSelector.dhall

in  { Type =
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
