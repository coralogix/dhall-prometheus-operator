let imports = ../imports.dhall

let Map = imports.Prelude.Map

let Kubernetes = imports.Kubernetes.Type

let StorageSpec = ./StorageSpec.dhall

in  { Type =
        { podMetadata : Optional Kubernetes.ObjectMeta
        , image : Optional Text
        , version : Optional Text
        , tag : Optional Text
        , sha : Optional Text
        , baseImage : Optional Text
        , imagePullSecrets : List Kubernetes.LocalObjectReference
        , secrets : List Text
        , configMaps : List Text
        , logLevel : Optional Text
        , logFormat : Optional Text
        , replicas : Optional Natural
        , retention : Optional Text
        , storage : Optional StorageSpec
        , externalUrl : Optional Text
        , routePrefix : Optional Text
        , paused : Optional Bool
        , nodeSelector : Map Text Text
        , resources : Optional Kubernetes.ResourceRequirements
        , affinity : Optional Kubernetes.Affinity
        , tolerations : List Kubernetes.Toleration
        , securityContext : Optional Kubernetes.PodSecurityContext
        , serviceAccountName : Optional Text
        , listenLocal : Optional Bool
        , containers : List Kubernetes.Container
        , priorityClassName : Optional Text
        , additionalPeers : List Text
        }
    , default =
        { podMetadata = None Kubernetes.ObjectMeta
        , image = None Text
        , version = None Text
        , tag = None Text
        , sha = None Text
        , baseImage = None Text
        , imagePullSecrets = [] : List Kubernetes.LocalObjectReference
        , secrets = [] : List Text
        , configMaps = [] : List Text
        , logLevel = None Text
        , logFormat = None Text
        , replicas = None Natural
        , retention = None Text
        , storage = None StorageSpec
        , externalUrl = None Text
        , routePrefix = None Text
        , paused = None Bool
        , nodeSelector = [] : Map Text Text
        , resources = None Kubernetes.ResourceRequirements
        , affinity = None Kubernetes.Affinity
        , tolerations = [] : List Kubernetes.Toleration
        , securityContext = None Kubernetes.PodSecurityContext
        , serviceAccountName = None Text
        , listenLocal = None Bool
        , containers = [] : List Kubernetes.Container
        , priorityClassName = None Text
        , additionalPeers = [] : List Text
        }
    }
