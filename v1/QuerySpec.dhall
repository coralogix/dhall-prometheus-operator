let QuerySpec =
      { Type =
          { lookbackDelta : Optional Text
          , maxConcurrency : Optional Natural
          , timeout : Optional Text
          , maxSamples : Optional Natural
          }
      , default =
        { lookbackDelta = None Text
        , maxConcurrency = None Natural
        , timeout = None Text
        , maxSamples = None Natural
        }
      }

let test = QuerySpec::{=}

in  QuerySpec
