let BasicAuth = ./BasicAuth.dhall

let TLSConfig = ./TLSConfig.dhall

in    { url :
          Text
      , requiredMatchers :
          Optional (List { mapKey : Text, mapValue : Text })
      , remoteTimeout :
          Optional Text
      , readRecent :
          Optional Bool
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
