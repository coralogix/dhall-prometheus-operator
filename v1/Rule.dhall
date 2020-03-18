let imports = ../imports.dhall

let Map = imports.Prelude.Map.Type

let IntOrString = imports.Kubernetes.IntOrString

let Rule =
      { Type =
          { record : Optional Text
          , alert : Optional Text
          , expr : IntOrString
          , for : Optional Text
          , labels : Map Text Text
          , annotations : Map Text Text
          }
      , default =
          { record = None Text
          , alert = None Text
          , for = None Text
          , labels = [] : Map Text Text
          , annotations = [] : Map Text Text
          }
      }

let test = Rule::{ expr = IntOrString.String "example" }

in  Rule
