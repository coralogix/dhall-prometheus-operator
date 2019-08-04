let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ServiceMonitorSpec = ./ServiceMonitorSpec.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Kubernetes.ObjectMeta
      , spec :
          ServiceMonitorSpec
      }
    : Type
