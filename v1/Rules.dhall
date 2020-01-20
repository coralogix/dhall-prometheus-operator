let RulesAlert = ./RulesAlert.dhall

let Rules = { Type = { alert : RulesAlert.Type }, default = {=} }

let test = Rules::{ alert = RulesAlert::{=} }

in  Rules
