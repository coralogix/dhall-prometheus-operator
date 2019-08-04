let NamespaceSelector = ../../types/v1/NamespaceSelector.dhall

let Endpoint = ../../types/v1/Endpoint.dhall

in  { jobLabel =
        None Text
    , targetLabels =
        [] : List Text
    , podTargetLabels =
        [] : List Text
    , endpoints =
        [] : List Endpoint
    , namespaceSelector =
        None NamespaceSelector
    , sampleLimit =
        None Natural
    }
