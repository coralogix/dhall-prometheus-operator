let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let HTTPConfig = ./HTTPConfig.dhall

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
