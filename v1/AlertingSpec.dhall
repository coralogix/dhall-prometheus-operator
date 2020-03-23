let AlertmanagerEndpoints = ./AlertmanagerEndpoints.dhall

let AlertingSpec =
      { Type = { alertmanagers : Optional (List AlertmanagerEndpoints.Type) }
      , default.alertmanagers = None (List AlertmanagerEndpoints.Type)
      }

let test = AlertingSpec::{=}

in  AlertingSpec
