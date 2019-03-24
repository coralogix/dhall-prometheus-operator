let Rule = ./Rule.dhall : Type

in  { name : Text, interval : Optional Text, rules : List Rule } : Type
