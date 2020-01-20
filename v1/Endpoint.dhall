let imports = ../imports.dhall

let Map = imports.Prelude.Map.Type

let Kubernetes = imports.Kubernetes.Type

let BasicAuth = ./BasicAuth.dhall

let RelabelConfig = ./RelabelConfig.dhall

let TLSConfig = ./TLSConfig.dhall

let Common =
        { path : Optional Text
        , scheme : Optional Text
        , params : Map Text Text
        , interval : Optional Text
        , scrapeTimeout : Optional Text
        , tlsConfig : Optional TLSConfig.Type
        , bearerTokenFile : Optional Text
        , bearerTokenSecret : Optional Kubernetes.SecretKeySelector
        , honorLabels : Optional Bool
        , honorTimestamps : Optional Bool
        , basicAuth : Optional BasicAuth.Type
        , metricRelabelings : List RelabelConfig.Type
        , relabelings : List RelabelConfig.Type
        , proxyUrl : Optional Text
        }
      : Type

let common =
      { path = None Text
      , scheme = None Text
      , params = [] : Map Text Text
      , interval = None Text
      , scrapeTimeout = None Text
      , tlsConfig = None TLSConfig.Type
      , bearerTokenFile = None Text
      , bearerTokenSecret = None Kubernetes.SecretKeySelector
      , honorLabels = None Bool
      , honorTimestamps = None Bool
      , basicAuth = None BasicAuth.Type
      , metricRelabelings = [] : List RelabelConfig.Type
      , relabelings = [] : List RelabelConfig.Type
      , proxyUrl = None Text
      }

let Port = Common ⩓ { port : Text }

let TargetPort = Common ⩓ { targetPort : Kubernetes.IntOrString }

let Endpoint =
      { Union = < Port : Port | TargetPort : TargetPort >
      , Port = { Type = Port, default = common }
      , TargetPort = { Type = TargetPort, default = common }
      }

let test =
      { port = Endpoint.Union.Port Endpoint.Port::{ port = "example-port" }
      , targetPort =
          Endpoint.Union.TargetPort
            Endpoint.TargetPort::{
            , targetPort = Kubernetes.IntOrString.Int 8080
            }
      }

in  Endpoint
