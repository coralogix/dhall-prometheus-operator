
let QuerySpec = ../../types/v1/QuerySpec.dhall

in    { lookbackDelta =
          None Text
      , maxConcurrency =
          None Natural
      , timeout =
          None Text
      }
    : QuerySpec
