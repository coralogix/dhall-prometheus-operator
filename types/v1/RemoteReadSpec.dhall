let Prelude = (../../ImportTypes.dhall).Prelude

let BasicAuth = ./BasicAuth.dhall

let TLSConfig = ./TLSConfig.dhall

in    { url :
          Text
      , requiredMatchers :
          Prelude.Map Text Text
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
