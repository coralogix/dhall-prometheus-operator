let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let PodMetricsEndpoint =
        ./PodMetricsEndpoint.dhall sha256:645afdb97a53570df548a6ce3153f8ba855f3e92d7f2186ee871b809188b6b77
      ? ./PodMetricsEndpoint.dhall

let NamespaceSelector =
        ./NamespaceSelector.dhall sha256:22a8b9f1fb7f20831916ede9b6426f6dbf7c44a1499ccd54e78e9c9c3638988a
      ? ./NamespaceSelector.dhall

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
