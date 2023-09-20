let RuleGroup =
        ./RuleGroup.dhall sha256:da9e7a14f1ec8a5693267c70cb779d3131e96719bfbf04d446471f513ee1be85
      ? ./RuleGroup.dhall

let PrometheusRuleSpec =
      { Type = { groups : List RuleGroup.Type }
      , default.groups = [] : List RuleGroup.Type
      }

let test = PrometheusRuleSpec::{=}

in  PrometheusRuleSpec
