let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let Matcher = ./Matcher.dhall

let Routes =
      let Route
          : ∀(_params : { routes : Type }) →
              { Type : Type
              , default :
                  { receiver : Optional Text
                  , groupBy : Optional (List Text)
                  , groupWait : Optional Text
                  , groupInterval : Optional Text
                  , repeatInterval : Optional Text
                  , matchers : Optional (List Matcher.Type)
                  , continue : Optional Bool
                  , routes : Optional _params.routes
                  }
              }
          = λ(_params : { routes : Type }) →
              { Type =
                  { receiver : Optional Text
                  , groupBy : Optional (List Text)
                  , groupWait : Optional Text
                  , groupInterval : Optional Text
                  , repeatInterval : Optional Text
                  , matchers : Optional (List Matcher.Type)
                  , continue : Optional Bool
                  , routes : Optional _params.routes
                  }
              , default =
                { receiver = None Text
                , groupBy = None (List Text)
                , groupWait = None Text
                , groupInterval = None Text
                , repeatInterval = None Text
                , matchers = None (List Matcher.Type)
                , continue = None Bool
                , routes = None _params.routes
                }
              }

      in  Route

let test = let Leaf = Routes { routes = <> } in Leaf::{=}

in  Routes
