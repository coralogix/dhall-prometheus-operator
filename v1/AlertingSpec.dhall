let AlertmanagerEndpoints = ./AlertmanagerEndpoints.dhall

let AlertingSpec =
      { Type = { alertmanagers : List AlertmanagerEndpoints.Type }
      , default = { alertmanagers = [] : List AlertmanagerEndpoints.Type }
      }

let test = AlertingSpec::{=}

in  AlertingSpec
