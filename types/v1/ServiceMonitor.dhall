let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ServiceMonitorSpec = ./ServiceMonitorSpec.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Optional Kubernetes.meta.v1.ObjectMeta
      , spec :
          ServiceMonitorSpec
      }
    : Type
