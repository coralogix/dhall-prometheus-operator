let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let Prelude = imports.Prelude

let RelabelConfig =
      (   ./RelabelConfig.dhall sha256:55536331ee4787f7a5063964fbfbc3d903903deae1ccf49365211e35764361fb
        ? ./RelabelConfig.dhall
      ).Type

in  { Type =
        { port : Optional Text
        , targetPort : Optional Kubernetes.NatOrString
        , path : Optional Text
        , scheme : Optional Text
        , params : Optional (Prelude.Map.Type Text Text)
        , interval : Optional Text
        , scrapeTimeout : Optional Text
        , honorLabels : Optional Bool
        , honorTimestamps : Optional Bool
        , metricRelabelings : Optional (List RelabelConfig)
        , relabelings : Optional (List RelabelConfig)
        , proxyUrl : Optional Text
        }
    , default =
      { port = None Text
      , targetPort = None Kubernetes.NatOrString
      , path = None Text
      , scheme = None Text
      , params = None (Prelude.Map.Type Text Text)
      , interval = None Text
      , scrapeTimeout = None Text
      , honorLabels = None Bool
      , honorTimestamps = None Bool
      , metricRelabelings = None (List RelabelConfig)
      , relabelings = None (List RelabelConfig)
      , proxyUrl = None Text
      }
    }
