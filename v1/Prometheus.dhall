let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let PrometheusSpec = ./PrometheusSpec.dhall

let PrometheusStatus = ./PrometheusStatus.dhall

let Prometheus =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Kubernetes.ObjectMeta.Type
          , spec : PrometheusSpec.Type
          , status : Optional PrometheusStatus.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "Prometheus"
          , metadata = Kubernetes.ObjectMeta.Type
          , spec = PrometheusSpec::{=}
          , status = None PrometheusStatus.Type
          }
      }

let test =
      Prometheus::{ metadata = Kubernetes.ObjectMeta::{ name = "example" } }

in  Prometheus
