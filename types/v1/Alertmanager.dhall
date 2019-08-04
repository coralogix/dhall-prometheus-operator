let ObjectMeta = (../../ImportTypes.dhall).Kubernetes.ObjectMeta

let AlertmanagerSpec = ./AlertmanagerSpec.dhall

let AlertmanagerStatus = ./AlertmanagerStatus.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          ObjectMeta
      , spec :
          AlertmanagerSpec
      , status :
          Optional AlertmanagerStatus
      }
    : Type
