let TLSConfig = ../../types/v1/TLSConfig.dhall

in    { caFile =
          None Text
      , certFile =
          None Text
      , insecureSkipVerify =
          None Bool
      , keyFile =
          None Text
      , serverName =
          None Text
      }
    : TLSConfig
