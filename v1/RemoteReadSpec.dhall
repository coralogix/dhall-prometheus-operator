let Map =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Prelude.Map.Type

let BasicAuth =
        ./BasicAuth.dhall sha256:2ce5199f94352d1293242b1e97ab6bad6c29f34d8df163676c4487e3c5dae3af
      ? ./BasicAuth.dhall

let TLSConfig =
        ./TLSConfig.dhall sha256:58054c5f17cbc2ae2bde2cf6acfec263045e9b841d8e60d0f5db152dffafa5cf
      ? ./TLSConfig.dhall

let RemoteReadSpec =
      { Type =
          { url : Text
          , name : Optional Text
          , requiredMatchers : Optional (Map Text Text)
          , remoteTimeout : Optional Text
          , readRecent : Optional Bool
          , basicAuth : Optional BasicAuth.Type
          , bearerToken : Optional Text
          , bearerTokenFile : Optional Text
          , tlsConfig : Optional TLSConfig.Type
          , proxyUrl : Optional Text
          }
      , default =
        { name = None Text
        , requiredMatchers = None (Map Text Text)
        , remoteTimeout = None Text
        , readRecent = None Bool
        , basicAuth = None BasicAuth.Type
        , bearerToken = None Text
        , bearerTokenFile = None Text
        , tlsConfig = None TLSConfig.Type
        , proxyUrl = None Text
        }
      }

let test = RemoteReadSpec::{ url = "example.com" }

in  RemoteReadSpec
