let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let NamespaceSelector = ./NamespaceSelector.dhall

let RelabelConfig = ./RelabelConfig.dhall

in  { Type =
        { selector : Optional Kubernetes.LabelSelector.Type
        , namespaceSelector : Optional NamespaceSelector
        , relabelingConfigs : Optional (List RelabelConfig.Type)
        }
    , default =
        { selector = None Kubernetes.LabelSelector.Type
        , namespaceSelector = None NamespaceSelector
        , relabelingConfigs = None (List RelabelConfig.Type)
        }
    }
