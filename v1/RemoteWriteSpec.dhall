let BasicAuth =
        ./BasicAuth.dhall sha256:2ce5199f94352d1293242b1e97ab6bad6c29f34d8df163676c4487e3c5dae3af
      ? ./BasicAuth.dhall

let QueueConfig =
        ./QueueConfig.dhall sha256:b882b46979605ffd73945d3daba3f4fc507506968a78996d5332fba1f0fa2572
      ? ./QueueConfig.dhall

let RelabelConfig =
        ./RelabelConfig.dhall sha256:55536331ee4787f7a5063964fbfbc3d903903deae1ccf49365211e35764361fb
      ? ./RelabelConfig.dhall

let TLSConfig =
        ./TLSConfig.dhall sha256:58054c5f17cbc2ae2bde2cf6acfec263045e9b841d8e60d0f5db152dffafa5cf
      ? ./TLSConfig.dhall

let RemoteWriteSpec =
      { Type =
          { url : Text
          , name : Optional Text
          , remoteTimeout : Optional Text
          , writeRelabelConfigs : Optional (List RelabelConfig.Type)
          , basicAuth : Optional BasicAuth.Type
          , bearerToken : Optional Text
          , bearerTokenFile : Optional Text
          , tlsConfig : Optional TLSConfig.Type
          , proxyUrl : Optional Text
          , queueConfig : Optional QueueConfig.Type
          }
      , default =
        { name = None Text
        , remoteTimeout = None Text
        , writeRelabelConfigs = None (List RelabelConfig.Type)
        , basicAuth = None BasicAuth.Type
        , bearerToken = None Text
        , bearerTokenFile = None Text
        , tlsConfig = None TLSConfig.Type
        , proxyUrl = None Text
        , queueConfig = None QueueConfig.Type
        }
      }

let test = RemoteWriteSpec::{ url = "example.com" }

in  RemoteWriteSpec
