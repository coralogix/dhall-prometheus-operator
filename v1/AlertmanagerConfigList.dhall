let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerConfigSpec = ./AlertmanagerConfigSpec.dhall

let AlertmanagerConfig = ./AlertmanagerConfig.dhall

let AlertmanagerConfigList
    : ∀(_params : { routes : Type }) →
        { Type : Type
        , default : { metadata : Optional Kubernetes.ObjectMeta.Type }
        }
    = λ(_params : { routes : Type }) →
        let AlertmanagerConfig = AlertmanagerConfig { routes = _params.routes }

        in  { Type =
                { metadata : Optional Kubernetes.ObjectMeta.Type
                , items : List AlertmanagerConfig.Type
                }
            , default.metadata = None Kubernetes.ObjectMeta.Type
            }

let test =
      let routes = { routes = <> }

      let testConfigSpec = AlertmanagerConfigSpec routes

      let testConfig = AlertmanagerConfig routes

      let testListConfig = AlertmanagerConfigList routes

      in  testListConfig::{
          , items = [ testConfig::{ spec = testConfigSpec::{=} } ]
          }

in  AlertmanagerConfigList
