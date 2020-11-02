let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let HTTPConfig = ./HTTPConfig.dhall

let PagerDutyConfigDetail =
      { Type = { key : Text, value : Text }, default = {=} }

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
