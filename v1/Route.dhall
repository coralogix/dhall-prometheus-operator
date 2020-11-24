let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let Matcher = ./Matcher.dhall

let Route =
      let Route =
            { receiver : Optional Text
            , groupBy : Optional (List Text)
            , groupWait : Optional Text
            , groupInterval : Optional Text
            , repeatInterval : Optional Text
            , matchers : Optional (List Matcher.Type)
            , continue : Optional Bool
            }

      in  { Type = Route ⩓ { routes : Optional (List Route) }
          , default =
            { receiver = None Text
            , groupBy = None (List Text)
            , groupWait = None Text
            , groupInterval = None Text
            , repeatInterval = None Text
            , matchers = None (List Matcher.Type)
            , continue = None Bool
            , routes = None (List Route)
            }
          }

in  Route
