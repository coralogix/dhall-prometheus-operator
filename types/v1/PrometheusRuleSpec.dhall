let RuleGroup = ./RuleGroup.dhall

in  { groups : Optional (List RuleGroup) } : Type
