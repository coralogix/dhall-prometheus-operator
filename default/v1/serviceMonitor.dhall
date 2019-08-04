let Kubernetes = (../../Imports.dhall).Kubernetes

in  { apiVersion =
        "monitoring.coreos.com/v1"
    , kind =
        "ServiceMonitor"
    , metadata =
        Kubernetes.ObjectMeta
    , spec =
        ./ServiceMonitorSpec.dhall
    }
