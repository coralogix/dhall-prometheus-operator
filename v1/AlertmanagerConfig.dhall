let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerConfigSpec = ./AlertmanagerConfigSpec.dhall

let Generator =
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
      (Generator AlertmanagerConfigSpec.Simple.Type)::{
      , spec = AlertmanagerConfigSpec.Simple::{=}
      }

let Simple = Generator AlertmanagerConfigSpec.Simple.Type

in  { Generator, Simple }
