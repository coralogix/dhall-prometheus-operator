let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ServiceMonitor = ../../types/v1/ServiceMonitor.dhall

let ServiceMonitorList = ../../types/v1/ServiceMonitorList.dhall

in    λ(_param : { items : List ServiceMonitor })
    →   { apiVersion =
            "monitoring.coreos.com/v1"
        , kind =
            "ServiceMonitorList"
        , metadata =
            None Kubernetes.meta.v1.ListMeta
        , items =
            _param.items
        }
      : ServiceMonitorList
