let RulesAlert =
        ./RulesAlert.dhall sha256:959e713d7b2ac190c99505ef5fd038ae280635b4cfa0b55271328ed67dd3b1b7
      ? ./RulesAlert.dhall

let Rules = { Type = { alert : RulesAlert.Type }, default = {=} }

let test = Rules::{ alert = RulesAlert::{=} }

in  Rules
