let Rule = ./Rule.dhall

let RuleGroup =
      { Type =
          { name : Text
          , interval : Optional Text
          , rules : Optional (List Rule.Type)
          }
      , default = { interval = None Text, rules = None (List Rule.Type) }
      }

let test = RuleGroup::{ name = "example" }

in  RuleGroup
