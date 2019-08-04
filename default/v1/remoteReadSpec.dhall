let Map = (../../ImportTypes.dhall).Prelude.Map

let BasicAuth = ../../types/v1/BasicAuth.dhall

let TLSConfig = ../../types/v1/TLSConfig.dhall

in  { requiredMatchers =
        [] : Map Text Text
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
