let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let NamespaceSelector =
        ./NamespaceSelector.dhall sha256:22a8b9f1fb7f20831916ede9b6426f6dbf7c44a1499ccd54e78e9c9c3638988a
      ? ./NamespaceSelector.dhall

let RelabelConfig =
        ./RelabelConfig.dhall sha256:55536331ee4787f7a5063964fbfbc3d903903deae1ccf49365211e35764361fb
      ? ./RelabelConfig.dhall

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
