let ListMeta = (../../ImportTypes.dhall).Kubernetes.meta.v1.ListMeta

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
