let Map = (../imports.dhall).Prelude.Map

let BasicAuth = ./BasicAuth.dhall

let TLSConfig = ./TLSConfig.dhall

in  { Type =
        { url : Text
        , requiredMatchers : Map Text Text
        , remoteTimeout : Optional Text
        , readRecent : Optional Bool
        , basicAuth : Optional BasicAuth.Type
        , bearerToken : Optional Text
        , bearerTokenFile : Optional Text
        , tlsConfig : Optional TLSConfig.Type
        , proxyUrl : Optional Text
        }
    , default =
        { requiredMatchers = [] : Map Text Text
        , remoteTimeout = None Text
        , readRecent = None Bool
        , basicAuth = None BasicAuth.Type
        , bearerToken = None Text
        , bearerTokenFile = None Text
        , tlsConfig = None TLSConfig.Type
        , proxyUrl = None Text
        }
    }
