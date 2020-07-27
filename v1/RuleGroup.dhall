let Rule = ./Rule.dhall

let RuleGroup =
      { Type =
          { name : Text
          , interval : Optional Text
          , rules : Optional (List Rule.Type)
          , partial_response_strategy : Optional Text
          }
      , default = { interval = None Text, rules = None (List Rule.Type), partial_response_strategy = None Text }
      }

let test = RuleGroup::{ name = "example" }

in  RuleGroup
