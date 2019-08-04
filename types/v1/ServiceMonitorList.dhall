let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ServiceMonitor = ./ServiceMonitor.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Kubernetes.ListMeta
      , items :
          List ServiceMonitor
      }
    : Type
