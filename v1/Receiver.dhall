let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let OpsGenieConfig =
        ./OpsGenieConfig.dhall sha256:84b0d36296b8dadd9eee814be280e7f594fa35679153cedfad52212edd9a64af
      ? ./OpsGenieConfig.dhall

let PagerDutyConfig =
        ./PagerDutyConfig.dhall sha256:3cdffab07520af478c569df8ea1f5ebba3961c9a050f050fb1b981def67a689c
      ? ./PagerDutyConfig.dhall

let WebhookConfig =
        ./WebhookConfig.dhall sha256:6381e39d10d4bfa438ee66d2aa394795713b273593c786e7612f4aa441b038f3
      ? ./WebhookConfig.dhall

let WeChatConfig =
        ./WeChatConfig.dhall sha256:943fb7fe1350e90d8d5af7d34c9177b9a3421ff47b680ea38514b839dca7e3db
      ? ./WeChatConfig.dhall

let Receiver =
      { Type =
          { name : Text
          , opsgenieConfigs : Optional (List OpsGenieConfig.Type)
          , pagerDutyConfigs : Optional (List PagerDutyConfig.Type)
          , webhookConfigs : Optional (List WebhookConfig.Type)
          , weChatConfig : Optional (List WeChatConfig.Type)
          }
      , default =
        { opsgenieConfigs = None (List OpsGenieConfig.Type)
        , pagerDutyConfigs = None (List PagerDutyConfig.Type)
        , webhookConfigs = None (List WebhookConfig.Type)
        , weChatConfig = None (List WeChatConfig.Type)
        }
      }

let test = Receiver::{ name = "receiver" }

in  Receiver
