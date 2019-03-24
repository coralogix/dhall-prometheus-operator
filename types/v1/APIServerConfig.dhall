let BasicAuth = ./BasicAuth.dhall

let TLSConfig = ./TLSConfig.dhall

in    { host :
          Text
      , basicAuth :
          Optional BasicAuth
      , bearerToken :
          Optional Text
      , bearerTokenFile :
          Optional Text
      , tlsConfig :
          Optional TLSConfig
      }
    : Type
