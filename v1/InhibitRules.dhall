let imports = ../imports.dhall

let Matcher = ./Matcher.dhall

let InhibitRules =
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

in  InhibitRules
