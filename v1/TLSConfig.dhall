{ Type =
    { caFile : Optional Text
    , certFile : Optional Text
    , insecureSkipVerify : Optional Bool
    , keyFile : Optional Text
    , serverName : Optional Text
    }
, default =
    { caFile = None Text
    , certFile = None Text
    , insecureSkipVerify = None Bool
    , keyFile = None Text
    , serverName = None Text
    }
}
