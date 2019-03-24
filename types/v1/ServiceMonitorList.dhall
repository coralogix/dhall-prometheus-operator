let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ServiceMonitor = ./ServiceMonitor.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Optional Kubernetes.meta.v1.ListMeta
      , items :
          List ServiceMonitor
      }
    : Type
