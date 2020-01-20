let IntOrString = (../imports.dhall).Kubernetes.Type.IntOrString

let TLSConfig = ./TLSConfig.dhall

let AlertmanagerEndpoints =
      { Type =
          { namespace : Text
          , name : Text
          , port : IntOrString
          , scheme : Optional Text
          , pathPrefix : Optional Text
          , tlsConfig : Optional TLSConfig.Type
          , bearerTokenFile : Optional Text
          , apiVersion : Optional Text
          }
      , default =
          { scheme = None Text
          , pathPrefix = None Text
          , tlsConfig = None TLSConfig.Type
          , bearerTokenFile = None Text
          , apiVersion = None Text
          }
      }

let test =
      AlertmanagerEndpoints::{
      , namespace = "default"
      , name = "example"
      , port = IntOrString.String "example"
      }

in  AlertmanagerEndpoints
