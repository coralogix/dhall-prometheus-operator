let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Map = imports.Prelude.Map.Type

let NatOrString = imports.Kubernetes.NatOrString

let Rule =
      { Type =
          { record : Optional Text
          , alert : Optional Text
          , expr : NatOrString
          , for : Optional Text
          , labels : Optional (Map Text Text)
          , annotations : Optional (Map Text Text)
          }
      , default =
        { record = None Text
        , alert = None Text
        , for = None Text
        , labels = None (Map Text Text)
        , annotations = None (Map Text Text)
        }
      }

let test = Rule::{ expr = NatOrString.String "example" }

in  Rule
