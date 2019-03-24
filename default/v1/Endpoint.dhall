let IntOrString = (../../ImportTypes.dhall).Kubernetes.util.IntOrString

let BasicAuth = ../../types/v1/BasicAuth.dhall

let RelabelConfig = ../../types/v1/RelabelConfig.dhall

let TLSConfig = ../../types/v1/TLSConfig.dhall

let Endpoint = ../../types/v1/Endpoint.dhall

in    { port =
          None Text
      , targetPort =
          None IntOrString
      , path =
          None Text
      , scheme =
          None Text
      , params =
          None (List { mapKey : Text, mapValue : Text })
      , interval =
          None Text
      , scrapeTimeout =
          None Text
      , tlsConfig =
          None TLSConfig
      , bearerTokenFile =
          None Text
      , honorLabels =
          None Bool
      , basicAuth =
          None BasicAuth
      , metricRelabelings =
          None (List RelabelConfig)
      , relabelings =
          None (List RelabelConfig)
      , proxyUrl =
          None Text
      }
    : Endpoint
