let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let BasicAuth = ./BasicAuth.dhall

let HTTPConfig = ./HTTPConfig.dhall

let OpsGenieConfigDetail =
      { Type = { key : Text, value : Text }, default = {=} }

let OpsGenieConfigResponder =
      { Type =
          { id : Optional Text
          , name : Optional Text
          , username : Optional Text
          , type : Optional Text
          }
      , default =
        { id = None Text
        , name = None Text
        , username = None Text
        , type = None Text
        }
      }

let OpsGenieConfig =
      { Type =
          { sendResolved : Optional Bool
          , apiKey : Optional Kubernetes.SecretKeySelector.Type
          , apiURL : Optional Text
          , message : Optional Text
          , description : Optional Text
          , source : Optional Text
          , tags : Optional Text
          , note : Optional Text
          , priority : Optional Text
          , details : Optional (List OpsGenieConfigDetail.Type)
          , responders : Optional (List OpsGenieConfigResponder.Type)
          , httpConfig : Optional HTTPConfig.Type
          }
      , default =
        { sendResolved = None Bool
        , apiKey = None Kubernetes.SecretKeySelector.Type
        , apiURL = None Text
        , message = None Text
        , description = None Text
        , source = None Text
        , tags = None Text
        , note = None Text
        , priority = None Text
        , details = None (List OpsGenieConfigDetail.Type)
        , responders = None (List OpsGenieConfigResponder.Type)
        , httpConfig = None HTTPConfig.Type
        }
      }

in  OpsGenieConfig
