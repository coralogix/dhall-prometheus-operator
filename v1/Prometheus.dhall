let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes.Type

let PrometheusSpec = ./PrometheusSpec.dhall

let PrometheusStatus = ./PrometheusStatus.dhall

let Prometheus =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Kubernetes.ObjectMeta
          , spec : PrometheusSpec.Type
          , status : Optional PrometheusStatus.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "Prometheus"
          , metadata = Kubernetes.ObjectMeta
          , spec = PrometheusSpec.default
          , status = None PrometheusStatus.Type
          }
      }

let test =
      let kubernetes = imports.Kubernetes.default
      
      in  Prometheus::{
          , metadata = kubernetes.ObjectMeta ⫽ { name = "example" }
          }

in  Prometheus
