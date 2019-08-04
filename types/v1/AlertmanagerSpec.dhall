let ImportTypes = ../../ImportTypes.dhall

let Prelude = ImportTypes.Prelude

let Kubernetes = ImportTypes.Kubernetes

let StorageSpec = ./StorageSpec.dhall

in    { podMetadata :
          Optional Kubernetes.ObjectMeta
      , image :
          Optional Text
      , version :
          Optional Text
      , tag :
          Optional Text
      , sha :
          Optional Text
      , baseImage :
          Optional Text
      , imagePullSecrets :
          List Kubernetes.LocalObjectReference
      , secrets :
          List Text
      , configMaps :
          List Text
      , logLevel :
          Optional Text
      , logFormat :
          Optional Text
      , replicas :
          Optional Natural
      , retention :
          Optional Text
      , storage :
          Optional StorageSpec
      , externalUrl :
          Optional Text
      , routePrefix :
          Optional Text
      , paused :
          Optional Bool
      , nodeSelector :
          Prelude.Map Text Text
      , resources :
          Optional Kubernetes.ResourceRequirements
      , affinity :
          Optional Kubernetes.Affinity
      , tolerations :
          List Kubernetes.Toleration
      , securityContext :
          Optional Kubernetes.PodSecurityContext
      , serviceAccountName :
          Optional Text
      , listenLocal :
          Optional Bool
      , containers :
          List Kubernetes.Container
      , priorityClassName :
          Optional Text
      , additionalPeers :
          List Text
      }
    : Type
