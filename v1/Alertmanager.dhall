let ObjectMeta = (../imports.dhall).Kubernetes.Type.ObjectMeta

let AlertmanagerSpec = ./AlertmanagerSpec.dhall

let AlertmanagerStatus = ./AlertmanagerStatus.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : ObjectMeta
        , spec : AlertmanagerSpec.Type
        , status : Optional AlertmanagerStatus.Type
        }
    , default =
        { apiVersion = "monitoring.coreos.com/v1"
        , kind = "Alertmanager"
        , spec = AlertmanagerSpec.default
        , status = None AlertmanagerStatus.Type
        }
    }
