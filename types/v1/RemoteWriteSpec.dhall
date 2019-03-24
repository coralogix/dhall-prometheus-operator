let BasicAuth = ./BasicAuth.dhall

let QueueConfig = ./QueueConfig.dhall

let RelabelConfig = ./RelabelConfig.dhall

let TLSConfig = ./TLSConfig.dhall

in    { url :
          Text
      , remoteTimeout :
          Optional Text
      , writeRelabelConfigs :
          Optional (List RelabelConfig)
      , basicAuth :
          Optional BasicAuth
      , bearerToken :
          Optional Text
      , bearerTokenFile :
          Optional Text
      , tlsConfig :
          Optional TLSConfig
      , proxyUrl :
          Optional Text
      }
    : Type
