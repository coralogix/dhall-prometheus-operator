{ Type =
    { capacity : Optional Natural
    , minShards : Optional Natural
    , maxShards : Optional Natural
    , maxSamplesPerSend : Optional Natural
    , batchSendDeadline : Optional Text
    , maxRetries : Optional Natural
    , minBackoff : Optional Text
    , maxBackoff : Optional Text
    }
, default =
    { capacity = None Natural
    , minShards = None Natural
    , maxShards = None Natural
    , maxSamplesPerSend = None Natural
    , batchSendDeadline = None Text
    , maxRetries = None Natural
    , minBackoff = None Text
    , maxBackoff = None Text
    }
}
