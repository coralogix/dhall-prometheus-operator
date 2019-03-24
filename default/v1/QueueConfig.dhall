let QueueConfig = ../../types/v1/QueueConfig.dhall

in    { capacity =
          None Natural
      , minShards =
          None Natural
      , maxShards =
          None Natural
      , maxSamplesPerSend =
          None Natural
      , batchSendDeadline =
          None Text
      , maxRetries =
          None Natural
      , minBackoff =
          None Text
      , maxBackoff =
          None Text
      }
    : QueueConfig
