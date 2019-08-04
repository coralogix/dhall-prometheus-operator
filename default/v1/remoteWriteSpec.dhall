let BasicAuth = ../../types/v1/BasicAuth.dhall

let QueueConfig = ../../types/v1/QueueConfig.dhall

let RelabelConfig = ../../types/v1/RelabelConfig.dhall

let TLSConfig = ../../types/v1/TLSConfig.dhall

in  { remoteTimeout =
        None Text
    , writeRelabelConfigs =
        [] : List RelabelConfig
    , basicAuth =
        None BasicAuth
    , bearerToken =
        None Text
    , bearerTokenFile =
        None Text
    , tlsConfig =
        None TLSConfig
    , proxyUrl =
        None Text
    }
