let ObjectMeta = (../../Imports.dhall).Kubernetes.ObjectMeta

let AlertmanagerStatus = ../../types/v1/AlertmanagerStatus.dhall

in  { apiVersion =
        "monitoring.coreos.com/v1"
    , kind =
        "Alertmanager"
    , metadata =
        ObjectMeta
    , spec =
        ./AlertmanagerSpec.dhall
    , status =
        None AlertmanagerStatus
    }
