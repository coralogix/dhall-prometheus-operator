let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let Endpoint = ./Endpoint.dhall

let NamespaceSelector = ./NamespaceSelector.dhall

in    { jobLabel :
          Optional Text
      , targetLabels :
          Optional (List Text)
      , podTargetLabels :
          Optional (List Text)
      , endpoints :
          List Endpoint
      , selector :
          Kubernetes.meta.v1.LabelSelector
      , namespaceSelector :
          Optional NamespaceSelector
      , sampleLimit :
          Optional Natural
      }
    : Type
