let imports = ../imports.dhall

let Map = imports.Prelude.Map.Type

let Kubernetes = imports.Kubernetes

let StorageSpec = ./StorageSpec.dhall

let AlertmanagerSpec =
      { Type =
          { podMetadata : Optional Kubernetes.ObjectMeta.Type
          , image : Optional Text
          , version : Optional Text
          , tag : Optional Text
          , sha : Optional Text
          , baseImage : Optional Text
          , imagePullSecrets : List Kubernetes.LocalObjectReference.Type
          , secrets : List Text
          , configMaps : List Text
          , configSecret : Optional Text
          , logLevel : Optional Text
          , logFormat : Optional Text
          , replicas : Optional Natural
          , retention : Optional Text
          , storage : Optional StorageSpec
          , volumes : List Kubernetes.Volume.Type
          , volumeMounts : List Kubernetes.VolumeMount.Type
          , externalUrl : Optional Text
          , routePrefix : Optional Text
          , paused : Optional Bool
          , nodeSelector : Map Text Text
          , resources : Optional Kubernetes.ResourceRequirements.Type
          , affinity : Optional Kubernetes.Affinity.Type
          , tolerations : List Kubernetes.Toleration.Type
          , securityContext : Optional Kubernetes.PodSecurityContext.Type
          , serviceAccountName : Optional Text
          , listenLocal : Optional Bool
          , containers : List Kubernetes.Container.Type
          , initContainers : List Kubernetes.Container.Type
          , priorityClassName : Optional Text
          , additionalPeers : List Text
          , portName : Optional Text
          }
      , default =
          { podMetadata = None Kubernetes.ObjectMeta.Type
          , image = None Text
          , version = None Text
          , tag = None Text
          , sha = None Text
          , baseImage = None Text
          , imagePullSecrets = [] : List Kubernetes.LocalObjectReference.Type
          , secrets = [] : List Text
          , configMaps = [] : List Text
          , configSecret = None Text
          , logLevel = None Text
          , logFormat = None Text
          , replicas = None Natural
          , retention = None Text
          , storage = None StorageSpec
          , volumes = [] : List Kubernetes.Volume.Type
          , volumeMounts = [] : List Kubernetes.VolumeMount.Type
          , externalUrl = None Text
          , routePrefix = None Text
          , paused = None Bool
          , nodeSelector = [] : Map Text Text
          , resources = None Kubernetes.ResourceRequirements.Type
          , affinity = None Kubernetes.Affinity.Type
          , tolerations = [] : List Kubernetes.Toleration.Type
          , securityContext = None Kubernetes.PodSecurityContext.Type
          , serviceAccountName = None Text
          , listenLocal = None Bool
          , containers = [] : List Kubernetes.Container.Type
          , initContainers = [] : List Kubernetes.Container.Type
          , priorityClassName = None Text
          , additionalPeers = [] : List Text
          , portName = None Text
          }
      }

let test = AlertmanagerSpec::{=}

in  AlertmanagerSpec
