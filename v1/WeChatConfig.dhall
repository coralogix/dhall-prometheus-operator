let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let HTTPConfig = ./HTTPConfig.dhall

let WeChatConfig =
      { Type =
          { sendResolved : Optional Bool
          , apiSecret : Optional Kubernetes.SecretKeySelector.Type
          , apiURL : Optional Text
          , corpID : Optional Text
          , agentID : Optional Text
          , toUser : Optional Text
          , toParty : Optional Text
          , toTag : Optional Text
          , message : Optional Text
          , messageType : Optional Text
          , httpConfig : Optional HTTPConfig.Type
          }
      , default =
        { sendResolved = None Bool
        , apiSecret = None Kubernetes.SecretKeySelector.Type
        , apiURL = None Text
        , corpID = None Text
        , agentID = None Text
        , toUser = None Text
        , toParty = None Text
        , toTag = None Text
        , message = None Text
        , messageType = None Text
        , httpConfig = None HTTPConfig.Type
        }
      }

in  WeChatConfig
