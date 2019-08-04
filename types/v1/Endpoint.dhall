let ImportTypes = ../../ImportTypes.dhall

let Prelude = ImportTypes.Prelude

let Kubernetes = ImportTypes.Kubernetes

let BasicAuth = ./BasicAuth.dhall

let RelabelConfig = ./RelabelConfig.dhall

let TLSConfig = ./TLSConfig.dhall

let Common =
        { path :
            Optional Text
        , scheme :
            Optional Text
        , params :
            Prelude.Map Text Text
        , interval :
            Optional Text
        , scrapeTimeout :
            Optional Text
        , tlsConfig :
            Optional TLSConfig
        , bearerTokenFile :
            Optional Text
        , honorLabels :
            Optional Bool
        , basicAuth :
            Optional BasicAuth
        , metricRelabelings :
            List RelabelConfig
        , relabelings :
            List RelabelConfig
        , proxyUrl :
            Optional Text
        }
      : Type

in  < Port :
        Common ⩓ { port : Text }
    | TargetPort :
        Common ⩓ { targetPort : Kubernetes.IntOrString }
    >
