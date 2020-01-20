let Kubernetes = (../imports.dhall).Kubernetes

let PodMonitor = ./PodMonitor.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.Type.ListMeta
        , items : List PodMonitor.Type
        }
    , default =
        { apiVersion = "monitoring.coreos.com/v1"
        , kind = "PodMonitorList"
        , metadata = Kubernetes.default.ListMeta
        , items = [] : List PodMonitor.Type
        }
    }
