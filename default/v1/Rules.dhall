let RulesAlert = ../../types/v1/RulesAlert.dhall

let Rules = ../../types/v1/Rules.dhall

in  λ(_param : { alert : RulesAlert }) → { alert = _param.alert } : Rules
