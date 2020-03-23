let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let Endpoint = ./Endpoint.dhall

let NamespaceSelector = ./NamespaceSelector.dhall

in  { Type =
        { jobLabel : Optional Text
        , targetLabels : Optional (List Text)
        , podTargetLabels : Optional (List Text)
        , endpoints : Optional (List Endpoint.Union)
        , selector : Kubernetes.LabelSelector.Type
        , namespaceSelector : Optional NamespaceSelector
        , sampleLimit : Optional Natural
        }
    , default =
        { jobLabel = None Text
        , targetLabels = None (List Text)
        , podTargetLabels = None (List Text)
        , endpoints = None (List Endpoint.Union)
        , namespaceSelector = None NamespaceSelector
        , sampleLimit = None Natural
        }
    }
