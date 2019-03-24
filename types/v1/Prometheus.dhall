let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let PrometheusSpec = ./PrometheusSpec.dhall

let PrometheusStatus = ./PrometheusStatus.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Optional Kubernetes.meta.v1.ObjectMeta
      , spec :
          PrometheusSpec
      , status :
          Optional PrometheusStatus
      }
    : Type
