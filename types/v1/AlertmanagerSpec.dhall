let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let StorageSpec = ./StorageSpec.dhall

in    { podMetadata :
          Optional Kubernetes.meta.v1.ObjectMeta
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
          Optional (List Kubernetes.core.v1.LocalObjectReference)
      , secrets :
          Optional (List Text)
      , configMaps :
          Optional (List Text)
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
          Optional (List { mapKey : Text, mapValue : Text })
      , resources :
          Optional Kubernetes.core.v1.ResourceRequirements
      , affinity :
          Optional Kubernetes.core.v1.Affinity
      , tolerations :
          Optional (List Kubernetes.core.v1.Toleration)
      , securityContext :
          Optional Kubernetes.core.v1.PodSecurityContext
      , serviceAccountName :
          Optional Text
      , listenLocal :
          Optional Bool
      , containers :
          Optional (List Kubernetes.core.v1.Container)
      , priorityClassName :
          Optional Text
      , additionalPeers :
          Optional (List Text)
      }
    : Type
