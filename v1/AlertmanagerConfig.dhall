let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let AlertmanagerConfigSpec = ./AlertmanagerConfigSpec.dhall

let AlertmanagerConfig
    : ∀(_params : { routes : Type }) →
        { Type : Type
        , default : { metadata : Optional Kubernetes.ObjectMeta.Type }
        }
    = λ(_params : { routes : Type }) →
        let AlertmanagerConfigSpec =
              AlertmanagerConfigSpec { routes = _params.routes }

        in  { Type =
                { metadata : Optional Kubernetes.ObjectMeta.Type
                , spec : AlertmanagerConfigSpec.Type
                }
            , default.metadata = None Kubernetes.ObjectMeta.Type
            }

let test =
      let routes = { routes = <> }

      let testConfigSpec = AlertmanagerConfigSpec routes

      let testConfig = AlertmanagerConfig routes

      in  testConfig::{ spec = testConfigSpec::{=} }

in  AlertmanagerConfig
