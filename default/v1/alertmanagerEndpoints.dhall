let TLSConfig = ../../types/v1/TLSConfig.dhall

in  { scheme =
        None Text
    , pathPrefix =
        None Text
    , tlsConfig =
        None TLSConfig
    , bearerTokenFile =
        None Text
    }
