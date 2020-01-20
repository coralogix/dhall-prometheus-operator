let Kubernetes = (../imports.dhall).Kubernetes.Type

let PodMonitorSpec = ./PodMonitorSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta
        , spec : PodMonitorSpec.Type
        }
    , default =
        { apiVersion = "monitoring.coreos.com/v1"
        , kind = "PodMonitor"
        , metadata = Kubernetes.ObjectMeta
        , spec = PodMonitorSpec.default
        }
    }
