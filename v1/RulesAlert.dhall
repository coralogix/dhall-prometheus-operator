let RulesAlert =
      { Type =
          { forOutageTolerance : Optional Text
          , forGracePeriod : Optional Text
          , resendDelay : Optional Text
          }
      , default =
        { forOutageTolerance = None Text
        , forGracePeriod = None Text
        , resendDelay = None Text
        }
      }

let test = RulesAlert::{=}

in  RulesAlert
