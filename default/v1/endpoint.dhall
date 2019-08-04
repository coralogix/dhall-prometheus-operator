let ImportTypes = ../../ImportTypes.dhall

let Prelude = ImportTypes.Prelude

let IntOrString = ImportTypes.Kubernetes.IntOrString

let BasicAuth = ../../types/v1/BasicAuth.dhall

let RelabelConfig = ../../types/v1/RelabelConfig.dhall

let TLSConfig = ../../types/v1/TLSConfig.dhall

in  { path =
        None Text
    , scheme =
        None Text
    , params =
        [] : Prelude.Map Text Text
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
        [] : List RelabelConfig
    , relabelings =
        [] : List RelabelConfig
    , proxyUrl =
        None Text
    }
