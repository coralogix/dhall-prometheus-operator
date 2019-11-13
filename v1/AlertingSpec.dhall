let AlertmanagerEndpoints = ./AlertmanagerEndpoints.dhall

in  { Type = { alertmanagers : List AlertmanagerEndpoints.Type }
    , default = { alertmanagers = [] : List AlertmanagerEndpoints.Type }
    }
