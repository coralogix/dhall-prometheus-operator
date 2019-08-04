let ListMeta = (../../ImportTypes.dhall).Kubernetes.ListMeta

let Alertmanager = ./Alertmanager.dhall

in    { apiVersion :
          Text
      , kind :
          Text
      , metadata :
          Optional ListMeta
      , items :
          List Alertmanager
      }
    : Type
