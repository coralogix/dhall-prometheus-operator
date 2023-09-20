let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Map = imports.Prelude.Map.Type

in  { Type =
        { static : Optional (List Text), labels : Optional (Map Text Text) }
    , default = { static = None (List Text), labels = None (Map Text Text) }
    }
