let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerSpec =
        ./AlertmanagerSpec.dhall sha256:f39005803d189f9c7867e4bc88f5fd8e698c0141410505e961bbe132ab7c1ba9
      ? ./AlertmanagerSpec.dhall

let AlertmanagerStatus =
        ./AlertmanagerStatus.dhall sha256:e2d018badce51e5389191631b0168799b07c220ce6a89945ec1c2732d5a5cb2e
      ? ./AlertmanagerStatus.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : AlertmanagerSpec.Type
        , status : Optional AlertmanagerStatus.Type
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1"
      , kind = "Alertmanager"
      , status = None AlertmanagerStatus.Type
      }
    }
