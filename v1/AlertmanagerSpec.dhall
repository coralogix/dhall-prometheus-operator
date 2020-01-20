let imports = ../imports.dhall

let Map = imports.Prelude.Map.Type

let Kubernetes = imports.Kubernetes.Type

let StorageSpec = ./StorageSpec.dhall

let AlertmanagerSpec =
      { Type =
          { podMetadata : Optional Kubernetes.ObjectMeta
          , image : Optional Text
          , version : Optional Text
          , tag : Optional Text
          , sha : Optional Text
          , baseImage : Optional Text
          , imagePullSecrets : List Kubernetes.LocalObjectReference
          , secrets : List Text
          , configMaps : List Text
          , configSecret : Optional Text
          , logLevel : Optional Text
          , logFormat : Optional Text
          , replicas : Optional Natural
          , retention : Optional Text
          , storage : Optional StorageSpec
          , volumes : List Kubernetes.Volume
          , volumeMounts : List Kubernetes.VolumeMount
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
          , initContainers : List Kubernetes.Container
          , priorityClassName : Optional Text
          , additionalPeers : List Text
          , portName : Optional Text
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
          , configSecret = None Text
          , logLevel = None Text
          , logFormat = None Text
          , replicas = None Natural
          , retention = None Text
          , storage = None StorageSpec
          , volumes = [] : List Kubernetes.Volume
          , volumeMounts = [] : List Kubernetes.VolumeMount
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
          , initContainers = [] : List Kubernetes.Container
          , priorityClassName = None Text
          , additionalPeers = [] : List Text
          , portName = None Text
          }
      }

let test = AlertmanagerSpec::{=}

in  AlertmanagerSpec
