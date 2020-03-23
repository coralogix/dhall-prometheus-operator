let Kubernetes = (../imports.dhall).Kubernetes

let ServiceMonitor = ./ServiceMonitor.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ListMeta.Type
        , items : Optional (List ServiceMonitor.Type)
        }
    , default =
        { apiVersion = "monitoring.coreos.com/v1"
        , kind = "ServiceMonitorList"
        , items = None (List ServiceMonitor.Type)
        }
    }
