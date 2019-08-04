let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let Endpoint = ./Endpoint.dhall

let NamespaceSelector = ./NamespaceSelector.dhall

in    { jobLabel :
          Optional Text
      , targetLabels :
          List Text
      , podTargetLabels :
          List Text
      , endpoints :
          List Endpoint
      , selector :
          Kubernetes.LabelSelector
      , namespaceSelector :
          Optional NamespaceSelector
      , sampleLimit :
          Optional Natural
      }
    : Type
