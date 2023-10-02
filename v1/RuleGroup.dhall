let Rule =
        ./Rule.dhall sha256:5d4291e1a984d630d9be65ebeb758f35c352fec94e7f8d613d53c290479c712e
      ? ./Rule.dhall

let RuleGroup =
      { Type =
          { name : Text
          , interval : Optional Text
          , rules : Optional (List Rule.Type)
          , partial_response_strategy : Optional Text
          }
      , default =
        { interval = None Text
        , rules = None (List Rule.Type)
        , partial_response_strategy = None Text
        }
      }

let test = RuleGroup::{ name = "example" }

in  RuleGroup
