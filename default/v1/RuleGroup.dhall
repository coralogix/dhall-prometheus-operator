let Rule = ../../types/v1/Rule.dhall

let RuleGroup = ../../types/v1/RuleGroup.dhall

in    λ(_params : { name : Text, rules : List Rule })
    →   { name = _params.name, interval = None Text, rules = _params.rules }
      : RuleGroup
