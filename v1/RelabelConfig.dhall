{ Type =
    { action : Optional Text
    , modulus : Optional Natural
    , regex : Optional Text
    , replacement : Optional Text
    , separator : Optional Text
    , sourceLabels : List Text
    , targetLabel : Optional Text
    }
, default =
    { action = None Text
    , modulus = None Natural
    , regex = None Text
    , replacement = None Text
    , separator = None Text
    , sourceLabels = [] : List Text
    , targetLabel = None Text
    }
}
