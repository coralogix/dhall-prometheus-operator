let RulesAlert = ../../types/v1/RulesAlert.dhall

in    { forOutageTolerance =
          None Text
      , forGracePeriod =
          None Text
      , resendDelay =
          None Text
      }
    : RulesAlert
