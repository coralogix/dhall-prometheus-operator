let OpsGenieConfigResponder =
      { Type =
          { id : Optional Text
          , name : Optional Text
          , username : Optional Text
          , type : Optional Text
          }
      , default =
        { id = None Text
        , name = None Text
        , username = None Text
        , type = None Text
        }
      }

in  OpsGenieConfigResponder
