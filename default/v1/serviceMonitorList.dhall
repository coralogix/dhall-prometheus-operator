let Kubernetes = (../../Imports.dhall).Kubernetes

let ServiceMonitor = ../../types/v1/ServiceMonitor.dhall

in  { apiVersion =
        "monitoring.coreos.com/v1"
    , kind =
        "ServiceMonitorList"
    , metadata =
        Kubernetes.ListMeta
    , items =
        [] : List ServiceMonitor
    }
