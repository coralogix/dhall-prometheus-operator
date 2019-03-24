let IntOrString = (../../ImportTypes.dhall).Kubernetes.util.IntOrString

let TLSConfig = ./TLSConfig.dhall

in    { namespace :
          Text
      , name :
          Text
      , port :
          IntOrString
      , scheme :
          Optional Text
      , pathPrefix :
          Optional Text
      , tlsConfig :
          Optional TLSConfig
      , bearerTokenFile :
          Optional Text
      }
    : Type
