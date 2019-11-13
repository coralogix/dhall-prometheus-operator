let Kubernetes = (../imports.dhall).Kubernetes.Type

let PrometheusSpec = ./PrometheusSpec.dhall

let PrometheusStatus = ./PrometheusStatus.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta
        , spec : PrometheusSpec.Type
        , status : Optional PrometheusStatus.Type
        }
    , default =
        { apiVersion = "monitoring.coreos.com/v1"
        , kind = "Prometheus"
        , metadata = Kubernetes.ObjectMeta
        , spec = PrometheusSpec.default
        , status = None PrometheusStatus.Type
        }
    }
