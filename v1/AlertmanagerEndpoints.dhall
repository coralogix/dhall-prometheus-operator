let IntOrString = (../imports.dhall).Kubernetes.Type.IntOrString

let TLSConfig = ./TLSConfig.dhall

in  { Type =
        { namespace : Text
        , name : Text
        , port : IntOrString
        , scheme : Optional Text
        , pathPrefix : Optional Text
        , tlsConfig : Optional TLSConfig.Type
        , bearerTokenFile : Optional Text
        }
    , default =
        { scheme = None Text
        , pathPrefix = None Text
        , tlsConfig = None TLSConfig.Type
        , bearerTokenFile = None Text
        }
    }
