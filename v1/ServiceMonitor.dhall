let Kubernetes = (../imports.dhall).Kubernetes.Type

let ServiceMonitorSpec = ./ServiceMonitorSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta
        , spec : ServiceMonitorSpec.Type
        }
    , default =
        { apiVersion = "monitoring.coreos.com/v1"
        , kind = "ServiceMonitor"
        , metadata = Kubernetes.ObjectMeta
        , spec = ServiceMonitorSpec.default
        }
    }
