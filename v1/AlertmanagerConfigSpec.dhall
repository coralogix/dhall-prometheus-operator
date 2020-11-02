let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let Route = ./Route.dhall

let Receiver = ./Receiver.dhall

let InhibitRule = ./InhibitRule.dhall

let AlertmanagerConfigSpec =
      { Type =
          { route : Optional Route.Type
          , receivers : Optional (List Receiver.Type)
          , inhibitRules : Optional (List InhibitRule.Type)
          }
      , default =
        { route = None Route.Type
        , receivers = None (List Receiver.Type)
        , inhibitRules = None (List InhibitRule.Type)
        }
      }

let test = AlertmanagerConfigSpec::{=}

in  AlertmanagerConfigSpec
