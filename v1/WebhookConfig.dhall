let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let HTTPConfig =
        ./HTTPConfig.dhall sha256:b33237d271ba53c43ad70ee79463355d929ee65040d413c0f15ef3e3071af17f
      ? ./HTTPConfig.dhall

let WebhookConfig =
      { Type =
          { sendResolved : Optional Bool
          , url : Optional Text
          , urlSecret : Optional Kubernetes.SecretKeySelector.Type
          , httpConfig : Optional HTTPConfig.Type
          , maxAlerts : Optional Natural
          }
      , default =
        { sendResolved = None Bool
        , url = None Text
        , urlSecret = None Kubernetes.SecretKeySelector.Type
        , httpConfig = None HTTPConfig.Type
        , maxAlerts = None Natural
        }
      }

in  WebhookConfig
