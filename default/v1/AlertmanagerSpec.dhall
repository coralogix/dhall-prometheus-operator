let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let AlertmanagerSpec = ../../types/v1/AlertmanagerSpec.dhall

let StorageSpec = ../../types/v1/StorageSpec.dhall

in    { podMetadata =
          None Kubernetes.meta.v1.ObjectMeta
      , image =
          None Text
      , version =
          None Text
      , tag =
          None Text
      , sha =
          None Text
      , baseImage =
          None Text
      , imagePullSecrets =
          None (List Kubernetes.core.v1.LocalObjectReference)
      , secrets =
          None (List Text)
      , configMaps =
          None (List Text)
      , logLevel =
          None Text
      , logFormat =
          None Text
      , replicas =
          None Natural
      , retention =
          None Text
      , storage =
          None StorageSpec
      , externalUrl =
          None Text
      , routePrefix =
          None Text
      , paused =
          None Bool
      , nodeSelector =
          None (List { mapKey : Text, mapValue : Text })
      , resources =
          None Kubernetes.core.v1.ResourceRequirements
      , affinity =
          None Kubernetes.core.v1.Affinity
      , tolerations =
          None (List Kubernetes.core.v1.Toleration)
      , securityContext =
          None Kubernetes.core.v1.PodSecurityContext
      , serviceAccountName =
          None Text
      , listenLocal =
          None Bool
      , containers =
          None (List Kubernetes.core.v1.Container)
      , priorityClassName =
          None Text
      , additionalPeers =
          None (List Text)
      }
    : AlertmanagerSpec
