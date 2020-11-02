let imports = ../imports.dhall

let OpsGenieConfig = ./OpsGenieConfig.dhall

let PagerDutyConfig = ./PagerDutyConfig.dhall

let WebhookConfig = ./WebhookConfig.dhall

let WeChatConfig = ./WeChatConfig.dhall

let Reciver =
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

let test = Reciver::{ name = "reciver" }

in  Reciver
