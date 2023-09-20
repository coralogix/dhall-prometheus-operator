let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let Endpoint =
        ./Endpoint.dhall sha256:a3a2c83c2e1d1eff489daf1b1a6f45507acfcf3c85e89e739f3b771597751744
      ? ./Endpoint.dhall

let NamespaceSelector =
        ./NamespaceSelector.dhall sha256:22a8b9f1fb7f20831916ede9b6426f6dbf7c44a1499ccd54e78e9c9c3638988a
      ? ./NamespaceSelector.dhall

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
