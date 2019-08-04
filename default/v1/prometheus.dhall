let Kubernetes = (../../Imports.dhall).Kubernetes

let Prometheus = ../../types/v1/Prometheus.dhall

let PrometheusStatus = ../../types/v1/PrometheusStatus.dhall

in  { apiVersion =
        "monitoring.coreos.com/v1"
    , kind =
        "Prometheus"
    , metadata =
        Kubernetes.ObjectMeta
    , spec =
        ./PrometheusSpec.dhall
    , status =
        None PrometheusStatus
    }
