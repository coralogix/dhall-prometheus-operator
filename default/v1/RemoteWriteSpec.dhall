let BasicAuth = ../../types/v1/BasicAuth.dhall

let QueueConfig = ../../types/v1/QueueConfig.dhall

let RelabelConfig = ../../types/v1/RelabelConfig.dhall

let RemoteWriteSpec = ../../types/v1/RemoteWriteSpec.dhall

let TLSConfig = ../../types/v1/TLSConfig.dhall

in    λ(_param : { url : Text })
    →   { url =
            _param.url
        , remoteTimeout =
            None Text
        , writeRelabelConfigs =
            None (List RelabelConfig)
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
      : RemoteWriteSpec
