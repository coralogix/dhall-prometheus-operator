let Kubernetes = (../../ImportTypes.dhall).Kubernetes

in    { accessModes :
          List Text
      , resources :
          Optional Kubernetes.ResourceRequirements
      , selector :
          Optional Kubernetes.LabelSelector
      , storageClassName :
          Optional Text
      , volumeMode :
          Optional Text
      , volumeName :
          Optional Text
      }
    : Type
