let AlertingSpec = ../../types/v1/AlertingSpec.dhall

let AlertmanagerEndpoints = ../../types/v1/AlertmanagerEndpoints.dhall

in    λ(_param : { alertmanagers : List AlertmanagerEndpoints })
    → { alertmanagers = _param.alertmanagers } : AlertingSpec
