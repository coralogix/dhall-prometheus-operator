let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let Route = ./Route.dhall

let Receiver = ./Receiver.dhall

let InhibitRules = ./InhibitRules.dhall

let AlertmanagerConfigSpec
    : ∀(_params : { routes : Type }) →
        { Type : Type
        , default :
            { route : Optional _params.routes
            , receivers : Optional (List Receiver.Type)
            , inhibitRules : Optional (List InhibitRules.Type)
            }
        }
    = λ(_params : { routes : Type }) →
        { Type =
            { route : Optional _params.routes
            , receivers : Optional (List Receiver.Type)
            , inhibitRules : Optional (List InhibitRules.Type)
            }
        , default =
          { route = None _params.routes
          , receivers = None (List Receiver.Type)
          , inhibitRules = None (List InhibitRules.Type)
          }
        }

let test =
      let testConfigSpec = AlertmanagerConfigSpec { routes = <> }

      in  testConfigSpec::{=}

in  AlertmanagerConfigSpec
