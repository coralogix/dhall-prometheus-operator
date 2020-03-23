let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let ServiceMonitorSpec = ./ServiceMonitorSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : ServiceMonitorSpec.Type
        }
    , default =
        { apiVersion = "monitoring.coreos.com/v1", kind = "ServiceMonitor" }
    }
