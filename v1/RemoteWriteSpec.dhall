let BasicAuth = ./BasicAuth.dhall

let QueueConfig = ./QueueConfig.dhall

let RelabelConfig = ./RelabelConfig.dhall

let TLSConfig = ./TLSConfig.dhall

in  { Type =
        { url : Text
        , remoteTimeout : Optional Text
        , writeRelabelConfigs : List RelabelConfig.Type
        , basicAuth : Optional BasicAuth.Type
        , bearerToken : Optional Text
        , bearerTokenFile : Optional Text
        , tlsConfig : Optional TLSConfig.Type
        , proxyUrl : Optional Text
        }
    , default =
        { remoteTimeout = None Text
        , writeRelabelConfigs = [] : List RelabelConfig.Type
        , basicAuth = None BasicAuth.Type
        , bearerToken = None Text
        , bearerTokenFile = None Text
        , tlsConfig = None TLSConfig.Type
        , proxyUrl = None Text
        }
    }
