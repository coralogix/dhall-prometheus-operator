let RelabelConfig =
      { Type =
          { action : Optional Text
          , modulus : Optional Natural
          , regex : Optional Text
          , replacement : Optional Text
          , separator : Optional Text
          , sourceLabels : Optional (List Text)
          , targetLabel : Optional Text
          }
      , default =
        { action = None Text
        , modulus = None Natural
        , regex = None Text
        , replacement = None Text
        , separator = None Text
        , sourceLabels = None (List Text)
        , targetLabel = None Text
        }
      }

let test = RelabelConfig::{=}

in  RelabelConfig
