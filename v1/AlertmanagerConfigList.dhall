let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerConfigSpec =
        ./AlertmanagerConfigSpec.dhall sha256:b9487178302a27b6ff8aa47180cd23c9be20471436fe8981dceb8be28e4d09da
      ? ./AlertmanagerConfigSpec.dhall

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
      let AlertmanagerConfigSpec =
              ./AlertmanagerConfigSpec.dhall sha256:b9487178302a27b6ff8aa47180cd23c9be20471436fe8981dceb8be28e4d09da
            ? ./AlertmanagerConfigSpec.dhall

      in  (Generator AlertmanagerConfigSpec.Simple.Type)::{
          , items = [] : List AlertmanagerConfigSpec.Simple.Type
          }

let Simple = Generator AlertmanagerConfigSpec.Simple.Type

in  { Generator, Simple }
