let imports = ../imports.dhall

let Map = imports.Prelude.Map.Type

in  { Type =
        { name : Optional Text
        , lables : Optional (Map Text Text)
        , annotations : Optional (Map Text Text)
        }
    , default =
      { name = None Text
      , labels = None (Map Text Text)
      , annotations = None (Map Text Text)
      }
    }
