let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let Prometheus = ../../types/v1/Prometheus.dhall

let PrometheusSpec = ../../types/v1/PrometheusSpec.dhall

let PrometheusStatus = ../../types/v1/PrometheusStatus.dhall

in    λ(_param : { spec : PrometheusSpec })
    →   { apiVersion =
            "monitoring.coreos.com/v1"
        , kind =
            "Prometheus"
        , metadata =
            None Kubernetes.meta.v1.ObjectMeta
        , spec =
            _param.spec
        , status =
            None PrometheusStatus
        }
      : Prometheus
