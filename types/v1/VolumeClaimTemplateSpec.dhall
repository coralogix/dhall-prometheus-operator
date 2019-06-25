let Kubernetes = (../../ImportTypes.dhall).Kubernetes

in    { accessModes :
          Optional (List Text)
      , resources :
          Optional Kubernetes.core.v1.ResourceRequirements
      , selector :
          Optional Kubernetes.meta.v1.LabelSelector
      , storageClassName :
          Optional Text
      , volumeMode :
          Optional Text
      , volumeName :
          Optional Text
      }
    : Type
