let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Map = imports.Prelude.Map.Type

let Kubernetes = imports.Kubernetes

let BasicAuth =
        ./BasicAuth.dhall sha256:2ce5199f94352d1293242b1e97ab6bad6c29f34d8df163676c4487e3c5dae3af
      ? ./BasicAuth.dhall

let RelabelConfig =
        ./RelabelConfig.dhall sha256:55536331ee4787f7a5063964fbfbc3d903903deae1ccf49365211e35764361fb
      ? ./RelabelConfig.dhall

let TLSConfig =
        ./TLSConfig.dhall sha256:58054c5f17cbc2ae2bde2cf6acfec263045e9b841d8e60d0f5db152dffafa5cf
      ? ./TLSConfig.dhall

let Common =
        { path : Optional Text
        , scheme : Optional Text
        , params : Optional (Map Text (List Text))
        , interval : Optional Text
        , scrapeTimeout : Optional Text
        , tlsConfig : Optional TLSConfig.Type
        , bearerTokenFile : Optional Text
        , bearerTokenSecret : Optional Kubernetes.SecretKeySelector.Type
        , honorLabels : Optional Bool
        , honorTimestamps : Optional Bool
        , basicAuth : Optional BasicAuth.Type
        , metricRelabelings : Optional (List RelabelConfig.Type)
        , relabelings : Optional (List RelabelConfig.Type)
        , proxyUrl : Optional Text
        }
      : Type

let common =
      { path = None Text
      , scheme = None Text
      , params = None (Map Text (List Text))
      , interval = None Text
      , scrapeTimeout = None Text
      , tlsConfig = None TLSConfig.Type
      , bearerTokenFile = None Text
      , bearerTokenSecret = None Kubernetes.SecretKeySelector.Type
      , honorLabels = None Bool
      , honorTimestamps = None Bool
      , basicAuth = None BasicAuth.Type
      , metricRelabelings = None (List RelabelConfig.Type)
      , relabelings = None (List RelabelConfig.Type)
      , proxyUrl = None Text
      }

let Port = Common ⩓ { port : Text }

let TargetPort = Common ⩓ { targetPort : Kubernetes.NatOrString }

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
            , targetPort = Kubernetes.NatOrString.Nat 8080
            }
      }

in  Endpoint
