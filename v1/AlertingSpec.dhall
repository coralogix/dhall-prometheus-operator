let AlertmanagerEndpoints =
        ./AlertmanagerEndpoints.dhall sha256:d628edd8a1930362f586470a5bf141bf0286e69deb463ff12cae53a34f1f3747
      ? ./AlertmanagerEndpoints.dhall

let AlertingSpec =
      { Type = { alertmanagers : Optional (List AlertmanagerEndpoints.Type) }
      , default.alertmanagers = None (List AlertmanagerEndpoints.Type)
      }

let test = AlertingSpec::{=}

in  AlertingSpec
