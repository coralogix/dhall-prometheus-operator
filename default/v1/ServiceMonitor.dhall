let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ServiceMonitor = ../../types/v1/ServiceMonitor.dhall

let ServiceMonitorSpec = ../../types/v1/ServiceMonitorSpec.dhall

in    λ(_param : { spec : ServiceMonitorSpec })
    →   { apiVersion =
            "monitoring.coreos.com/v1"
        , kind =
            "ServiceMonitor"
        , metadata =
            None Kubernetes.meta.v1.ObjectMeta
        , spec =
            _param.spec
        }
      : ServiceMonitor
