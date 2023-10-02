let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let HTTPConfig =
        ./HTTPConfig.dhall sha256:b33237d271ba53c43ad70ee79463355d929ee65040d413c0f15ef3e3071af17f
      ? ./HTTPConfig.dhall

let PagerDutyConfigDetail =
        ./PagerDutyConfigDetail.dhall sha256:9bb842a44771c837f8f1d7a39c837ff7821ff436f4b198bdfcce0a681dc08b2e
      ? ./PagerDutyConfigDetail.dhall

let PagerDutyConfig =
      { Type =
          { sendResolved : Optional Bool
          , routingKey : Optional Kubernetes.SecretKeySelector.Type
          , serviceKey : Optional Kubernetes.SecretKeySelector.Type
          , url : Optional Text
          , client : Optional Text
          , clientURL : Optional Text
          , description : Optional Text
          , severity : Optional Text
          , class : Optional Text
          , group : Optional Text
          , component : Optional Text
          , details : Optional (List PagerDutyConfigDetail.Type)
          , httpConfig : Optional HTTPConfig.Type
          }
      , default =
        { sendResolved = None Bool
        , routingKey = None Kubernetes.SecretKeySelector.Type
        , serviceKey = None Kubernetes.SecretKeySelector.Type
        , url = None Text
        , client = None Text
        , clientURL = None Text
        , description = None Text
        , severity = None Text
        , class = None Text
        , group = None Text
        , component = None Text
        , details = None (List PagerDutyConfigDetail.Type)
        , httpConfig = None HTTPConfig.Type
        }
      }

in  PagerDutyConfig
