let RuleGroup = ./RuleGroup.dhall

in  { Type = { groups : List RuleGroup.Type }
    , default = { groups = [] : List RuleGroup.Type }
    }
