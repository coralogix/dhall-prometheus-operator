let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Matcher =
        ./Matcher.dhall sha256:c8519226bf49d086fafacdac890df38fb63e10921984abfd2787e78aa3d90f3c
      ? ./Matcher.dhall

let InhibitRule =
      { Type =
          { targetMatch : Optional (List Matcher.Type)
          , sourceMatch : Optional (List Matcher.Type)
          , equal : Optional (List Text)
          }
      , default =
        { targetMatch = None (List Matcher.Type)
        , sourceMatch = None (List Matcher.Type)
        , equal = None (List Text)
        }
      }

in  InhibitRule
