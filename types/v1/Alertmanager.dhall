let ObjectMeta = (../../ImportTypes.dhall).Kubernetes.meta.v1.ObjectMeta

let AlertmanagerSpec = ./AlertmanagerSpec.dhall

let AlertmanagerStatus = ./AlertmanagerStatus.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Optional ObjectMeta
      , spec :
          AlertmanagerSpec
      , status :
          Optional AlertmanagerStatus
      }
    : Type
