let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let HTTPConfig =
        ./HTTPConfig.dhall sha256:b33237d271ba53c43ad70ee79463355d929ee65040d413c0f15ef3e3071af17f
      ? ./HTTPConfig.dhall

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
