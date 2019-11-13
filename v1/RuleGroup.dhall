let Rule = ./Rule.dhall

in  { Type = { name : Text, interval : Optional Text, rules : List Rule.Type }
    , default = { interval = None Text, rules = [] : List Rule.Type }
    }
