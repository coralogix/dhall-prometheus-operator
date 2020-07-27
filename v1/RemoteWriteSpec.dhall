let BasicAuth = ./BasicAuth.dhall

let QueueConfig = ./QueueConfig.dhall

let RelabelConfig = ./RelabelConfig.dhall

let TLSConfig = ./TLSConfig.dhall

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
