let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let BasicAuth =
        ./BasicAuth.dhall sha256:2ce5199f94352d1293242b1e97ab6bad6c29f34d8df163676c4487e3c5dae3af
      ? ./BasicAuth.dhall

let HTTPConfig =
        ./HTTPConfig.dhall sha256:b33237d271ba53c43ad70ee79463355d929ee65040d413c0f15ef3e3071af17f
      ? ./HTTPConfig.dhall

let OpsGenieConfigDetail =
        ./OpsGenieConfigDetail.dhall sha256:9bb842a44771c837f8f1d7a39c837ff7821ff436f4b198bdfcce0a681dc08b2e
      ? ./OpsGenieConfigDetail.dhall

let OpsGenieConfigResponder =
        ./OpsGenieConfigResponder.dhall sha256:49d9e33fa13b200230a0f65b12ff4fcbe5675b4cf5dbaf9b64d9797899300587
      ? ./OpsGenieConfigResponder.dhall

let OpsGenieConfig =
      { Type =
          { sendResolved : Optional Bool
          , apiKey : Optional Kubernetes.SecretKeySelector.Type
          , apiURL : Optional Text
          , message : Optional Text
          , description : Optional Text
          , source : Optional Text
          , tags : Optional Text
          , note : Optional Text
          , priority : Optional Text
          , details : Optional (List OpsGenieConfigDetail.Type)
          , responders : Optional (List OpsGenieConfigResponder.Type)
          , httpConfig : Optional HTTPConfig.Type
          }
      , default =
        { sendResolved = None Bool
        , apiKey = None Kubernetes.SecretKeySelector.Type
        , apiURL = None Text
        , message = None Text
        , description = None Text
        , source = None Text
        , tags = None Text
        , note = None Text
        , priority = None Text
        , details = None (List OpsGenieConfigDetail.Type)
        , responders = None (List OpsGenieConfigResponder.Type)
        , httpConfig = None HTTPConfig.Type
        }
      }

in  OpsGenieConfig
