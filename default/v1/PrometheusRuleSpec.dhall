let PrometheusRuleSpec = ../../types/v1/PrometheusRuleSpec.dhall

let RuleGroup = ../../types/v1/RuleGroup.dhall

in  { groups = None (List RuleGroup) } : PrometheusRuleSpec
