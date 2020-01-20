let RuleGroup = ./RuleGroup.dhall

let PrometheusRuleSpec =
      { Type = { groups : List RuleGroup.Type }
      , default = { groups = [] : List RuleGroup.Type }
      }

let test = PrometheusRuleSpec::{=}

in  PrometheusRuleSpec
