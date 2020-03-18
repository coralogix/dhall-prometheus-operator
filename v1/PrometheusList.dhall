let Kubernetes = (../imports.dhall).Kubernetes

let Prometheus = ./Prometheus.dhall

let PrometheusList =
      { Type =
          { apiVersion : Text
          , kind : Text
          , metadata : Optional Kubernetes.ListMeta.Type
          , items : List Prometheus.Type
          }
      , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "PrometheusList"
          , metadata = None Kubernetes.ListMeta.Type
          , items = [] : List Prometheus.Type
          }
      }

let test = PrometheusList::{=}

in  PrometheusList
