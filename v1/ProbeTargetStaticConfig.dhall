let imports = ../imports.dhall

let Map = imports.Prelude.Map.Type

in  { Type =
        { static : Optional (List Text), labels : Optional (Map Text Text) }
    }
