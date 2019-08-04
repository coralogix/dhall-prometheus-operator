let ImportTypes = ../../ImportTypes.dhall

let Prelude = ImportTypes.Prelude

let Kubernetes = ImportTypes.Kubernetes

let AlertmanagerSpec = ../../types/v1/AlertmanagerSpec.dhall

let StorageSpec = ../../types/v1/StorageSpec.dhall

in  { podMetadata =
        None Kubernetes.ObjectMeta
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
        [] : List Kubernetes.LocalObjectReference
    , secrets =
        [] : List Text
    , configMaps =
        [] : List Text
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
        [] : Prelude.Map Text Text
    , resources =
        None Kubernetes.ResourceRequirements
    , affinity =
        None Kubernetes.Affinity
    , tolerations =
        [] : List Kubernetes.Toleration
    , securityContext =
        None Kubernetes.PodSecurityContext
    , serviceAccountName =
        None Text
    , listenLocal =
        None Bool
    , containers =
        [] : List Kubernetes.Container
    , priorityClassName =
        None Text
    , additionalPeers =
        [] : List Text
    }
