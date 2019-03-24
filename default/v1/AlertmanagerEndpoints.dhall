let IntOrString = (../../ImportTypes.dhall).Kubernetes.util.IntOrString

let AlertmanagerEndpoints = ../../types/v1/AlertmanagerEndpoints.dhall

let TLSConfig = ../../types/v1/TLSConfig.dhall

in    λ(_param : { namespace : Text, name : Text, port : IntOrString })
    →   { namespace =
            _param.namespace
        , name =
            _param.name
        , port =
            _param.port
        , scheme =
            None Text
        , pathPrefix =
            None Text
        , tlsConfig =
            None TLSConfig
        , bearerTokenFile =
            None Text
        }
      : AlertmanagerEndpoints
