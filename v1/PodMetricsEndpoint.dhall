let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let Prelude = imports.Prelude

let RelabelConfig = (./RelabelConfig.dhall).Type

in  { Type =
        { port : Optional Text
        , targetPort : Optional Kubernetes.IntOrString
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
      , targetPort = None Kubernetes.IntOrString
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
