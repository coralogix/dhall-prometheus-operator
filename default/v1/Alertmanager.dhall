let ObjectMeta = (../../ImportTypes.dhall).Kubernetes.meta.v1.ObjectMeta

let Alertmanager = ../../types/v1/Alertmanager.dhall

let AlertmanagerSpec = ../../types/v1/AlertmanagerSpec.dhall

let AlertmanagerStatus = ../../types/v1/AlertmanagerStatus.dhall

in    λ(_param : { spec : AlertmanagerSpec })
    →   { apiVersion =
            "monitoring.coreos.com/v1"
        , kind =
            "Alertmanager"
        , metadata =
            None ObjectMeta
        , spec =
            _param.spec
        , status =
            None AlertmanagerStatus
        }
      : Alertmanager
