let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerConfig =
      λ(ConfigSpec : Type) →
        { Type =
            { apiVersion : Text
            , kind : Text
            , metadata : Optional Kubernetes.ObjectMeta.Type
            , spec : ConfigSpec
            }
        , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "AlertmanagerConfig"
          , metadata = None Kubernetes.ObjectMeta.Type
          }
        }

let test =
      let ConfigSpec = ./AlertmanagerConfigSpec.dhall <>

      in  (AlertmanagerConfig ConfigSpec.Type)::{ spec = ConfigSpec::{=} }

in  AlertmanagerConfig
