let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let Matcher =
        ./Matcher.dhall sha256:c8519226bf49d086fafacdac890df38fb63e10921984abfd2787e78aa3d90f3c
      ? ./Matcher.dhall

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
