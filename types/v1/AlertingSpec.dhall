let AlertmanagerEndpoints = ./AlertmanagerEndpoints.dhall

in  { alertmanagers : List AlertmanagerEndpoints } : Type
