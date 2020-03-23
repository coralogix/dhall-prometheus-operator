let Kubernetes = (../imports.dhall).Kubernetes

let PodMonitorSpec = ./PodMonitorSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : PodMonitorSpec.Type
        }
    , default = { apiVersion = "monitoring.coreos.com/v1", kind = "PodMonitor" }
    }
