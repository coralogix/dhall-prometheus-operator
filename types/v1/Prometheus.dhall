let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let PrometheusSpec = ./PrometheusSpec.dhall

let PrometheusStatus = ./PrometheusStatus.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Kubernetes.ObjectMeta
      , spec :
          PrometheusSpec
      , status :
          Optional PrometheusStatus
      }
    : Type
