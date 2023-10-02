let NatOrString =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes.NatOrString

let TLSConfig =
        ./TLSConfig.dhall sha256:58054c5f17cbc2ae2bde2cf6acfec263045e9b841d8e60d0f5db152dffafa5cf
      ? ./TLSConfig.dhall

in  { Type =
        { namespace : Text
        , name : Text
        , port : NatOrString
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
