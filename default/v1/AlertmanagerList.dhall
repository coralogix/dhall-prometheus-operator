let ListMeta = (../../ImportTypes.dhall).Kubernetes.meta.v1.ListMeta

let AlertmanagerList = ../../types/v1/AlertmanagerList.dhall

let Alertmanager = ../../types/v1/Alertmanager.dhall

in    λ(_param : { items : List Alertmanager })
    →   { apiVersion =
            "monitoring.coreos.com/v1"
        , kind =
            "AlertmanagerList"
        , metadata =
            None ListMeta
        , items =
            _param.items
        }
      : AlertmanagerList
