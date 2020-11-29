let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerConfigSpec = ./AlertmanagerConfigSpec.dhall

let AlertmanagerConfig = ./AlertmanagerConfig.dhall

let AlertmanagerConfigList =
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
      let ConfigSpec = ./AlertmanagerConfig.dhall <>

      in  (AlertmanagerConfigList ConfigSpec.Type)::{
          , items = [] : List ConfigSpec.Type
          }

in  AlertmanagerConfigList
