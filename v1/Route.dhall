let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let Matcher = ./Matcher.dhall

let Generator =
      λ(RouteObject : Type) →
        { Type =
            { receiver : Optional Text
            , groupBy : Optional (List Text)
            , groupWait : Optional Text
            , groupInterval : Optional Text
            , repeatInterval : Optional Text
            , matchers : Optional (List Matcher.Type)
            , continue : Optional Bool
            , routes : Optional (List RouteObject)
            }
        , default =
          { receiver = None Text
          , groupBy = None (List Text)
          , groupWait = None Text
          , groupInterval = None Text
          , repeatInterval = None Text
          , matchers = None (List Matcher.Type)
          , continue = None Bool
          , routes = None (List RouteObject)
          }
        }

let test = (Generator <>)::{=}

let Child = Generator <>

let Root = Generator Child.Type

in  { Generator, Child, Root }
