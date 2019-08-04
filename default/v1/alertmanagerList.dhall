let ListMeta = (../../ImportTypes.dhall).Kubernetes.ListMeta

let Alertmanager = ../../types/v1/Alertmanager.dhall

in  { apiVersion =
        "monitoring.coreos.com/v1"
    , kind =
        "AlertmanagerList"
    , metadata =
        None ListMeta
    , items =
        [] : List Alertmanager
    }
