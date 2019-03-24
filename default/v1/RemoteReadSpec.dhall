let BasicAuth = ../../types/v1/BasicAuth.dhall

let RemoteReadSpec = ../../types/v1/RemoteReadSpec.dhall

let TLSConfig = ../../types/v1/TLSConfig.dhall

in    λ(_param : { url : Text })
    →   { url =
            _param.url
        , requiredMatchers =
            None (List { mapKey : Text, mapValue : Text })
        , remoteTimeout =
            None Text
        , readRecent =
            None Bool
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
      : RemoteReadSpec
