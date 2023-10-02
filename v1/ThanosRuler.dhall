let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let ThanosRulerSpec =
        ./ThanosRulerSpec.dhall sha256:757a26ba9bfc6fa27ff1ff11de20e637878069d7910af2e6390d9c86c6c82db8
      ? ./ThanosRulerSpec.dhall

let ThanosRulerStatus =
        ./ThanosRulerStatus.dhall sha256:e2d018badce51e5389191631b0168799b07c220ce6a89945ec1c2732d5a5cb2e
      ? ./ThanosRulerStatus.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : ThanosRulerSpec.Type
        , status : Optional ThanosRulerStatus.Type
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1"
      , kind = "ThanosRuler"
      , status = None ThanosRulerStatus.Type
      }
    }
