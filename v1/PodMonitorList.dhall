let Kubernetes = (../imports.dhall).Kubernetes

let PodMonitor = ./PodMonitor.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ListMeta.Type
        , items : Optional (List PodMonitor.Type)
        }
    , default =
        { apiVersion = "monitoring.coreos.com/v1", kind = "PodMonitorList" }
    }
