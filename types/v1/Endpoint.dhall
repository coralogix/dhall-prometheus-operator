let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let BasicAuth = ./BasicAuth.dhall

let RelabelConfig = ./RelabelConfig.dhall

let TLSConfig = ./TLSConfig.dhall

in    { port :
          Optional Text
      , targetPort :
          Optional Kubernetes.util.IntOrString
      , path :
          Optional Text
      , scheme :
          Optional Text
      , params :
          Optional (List { mapKey : Text, mapValue : Text })
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
          Optional (List RelabelConfig)
      , relabelings :
          Optional (List RelabelConfig)
      , proxyUrl :
          Optional Text
      }
    : Type
