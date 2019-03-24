let APIServerConfig = ../../types/v1/APIServerConfig.dhall

let BasicAuth = ../../types/v1/BasicAuth.dhall

let TLSConfig = ../../types/v1/TLSConfig.dhall

in    λ(_param : { host : Text })
    →   { host =
            _param.host
        , basicAuth =
            None BasicAuth
        , bearerToken =
            None Text
        , bearerTokenFile =
            None Text
        , tlsConfig =
            None TLSConfig
        }
      : APIServerConfig
