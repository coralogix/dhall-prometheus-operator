let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerConfigSpec = ./AlertmanagerConfigSpec.dhall

let Generator =
      λ(ConfigSpec : Type) →
        { Type =
            { apiVersion : Text
            , kind : Text
            , metadata : Optional Kubernetes.ObjectMeta.Type
            , items : List ConfigSpec
            }
        , default =
          { apiVersion = "monitoring.coreos.com/v1"
          , kind = "AlertmanagerConfigList"
          , metadata = None Kubernetes.ObjectMeta.Type
          }
        }

let test =
      let AlertmanagerConfigSpec = ./AlertmanagerConfigSpec.dhall

      in  (Generator AlertmanagerConfigSpec.Simple.Type)::{
          , items = [] : List AlertmanagerConfigSpec.Simple.Type
          }

let Simple = Generator AlertmanagerConfigSpec.Simple.Type

in  { Generator, Simple }
