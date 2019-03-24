let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let Endpoint = ../../types/v1/Endpoint.dhall

let NamespaceSelector = ../../types/v1/NamespaceSelector.dhall

let ServiceMonitorSpec = ../../types/v1/ServiceMonitorSpec.dhall

in    λ ( _param
        : { endpoints :
              List Endpoint
          , selector :
              Kubernetes.meta.v1.LabelSelector
          }
        )
    →   { jobLabel =
            None Text
        , targetLabels =
            None (List Text)
        , podTargetLabels =
            None (List Text)
        , endpoints =
            _param.endpoints
        , selector =
            _param.selector
        , namespaceSelector =
            None NamespaceSelector
        , sampleLimit =
            None Natural
        }
      : ServiceMonitorSpec
