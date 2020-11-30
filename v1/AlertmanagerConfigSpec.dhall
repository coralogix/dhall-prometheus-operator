let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let Receiver = ./Receiver.dhall

let InhibitRule = ./InhibitRule.dhall

let Generator =
      λ(Route : Type) →
        { Type =
            { route : Optional Route
            , receivers : Optional (List Receiver.Type)
            , inhibitRules : Optional (List InhibitRule.Type)
            }
        , default =
          { route = None Route
          , receivers = None (List Receiver.Type)
          , inhibitRules = None (List InhibitRule.Type)
          }
        }

let test = (Generator <>)::{=}

let Simple =
      let Route = ./Route.dhall

      let SimpleRootRoute = Route.Root

      in  Generator SimpleRootRoute.Type

in  { Generator, Simple }
