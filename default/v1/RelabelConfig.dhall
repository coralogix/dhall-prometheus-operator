let RelabelConfig = ../../types/v1/RelabelConfig.dhall

in    { action =
          None Text
      , modulus =
          None Natural
      , regex =
          None Text
      , replacement =
          None Text
      , separator =
          None Text
      , sourceLabels =
          None (List Text)
      , targetLabel =
          None Text
      }
    : RelabelConfig
