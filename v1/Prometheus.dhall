let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let PrometheusSpec =
        ./PrometheusSpec.dhall sha256:57cf9741ed49b0fc5be376bf1c1e72f5fed3828aafef0b53415adc078a4e71dc
      ? ./PrometheusSpec.dhall

let PrometheusStatus =
        ./PrometheusStatus.dhall sha256:e2d018badce51e5389191631b0168799b07c220ce6a89945ec1c2732d5a5cb2e
      ? ./PrometheusStatus.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : PrometheusSpec.Type
        , status : Optional PrometheusStatus.Type
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1"
      , kind = "Prometheus"
      , status = None PrometheusStatus.Type
      }
    }
