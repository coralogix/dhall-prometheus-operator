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
          , imagePullSecrets :
              Optional (List Kubernetes.LocalObjectReference.Type)
          , secrets : Optional (List Text)
          , configMaps : Optional (List Text)
          , configSecret : Optional Text
          , logLevel : Optional Text
          , logFormat : Optional Text
          , replicas : Optional Natural
          , retention : Optional Text
          , storage : Optional StorageSpec
          , volumes : Optional (List Kubernetes.Volume.Type)
          , volumeMounts : Optional (List Kubernetes.VolumeMount.Type)
          , externalUrl : Optional Text
          , routePrefix : Optional Text
          , paused : Optional Bool
          , nodeSelector : Optional (Map Text Text)
          , resources : Optional Kubernetes.ResourceRequirements.Type
          , affinity : Optional Kubernetes.Affinity.Type
          , tolerations : Optional (List Kubernetes.Toleration.Type)
          , securityContext : Optional Kubernetes.PodSecurityContext.Type
          , serviceAccountName : Optional Text
          , listenLocal : Optional Bool
          , containers : Optional (List Kubernetes.Container.Type)
          , initContainers : Optional (List Kubernetes.Container.Type)
          , priorityClassName : Optional Text
          , additionalPeers : Optional (List Text)
          , clusterAdvertiseAddress : Optional Text
          , portName : Optional Text
          }
      , default =
        { podMetadata = None Kubernetes.ObjectMeta.Type
        , image = None Text
        , version = None Text
        , tag = None Text
        , sha = None Text
        , baseImage = None Text
        , imagePullSecrets = None (List Kubernetes.LocalObjectReference.Type)
        , secrets = None (List Text)
        , configMaps = None (List Text)
        , configSecret = None Text
        , logLevel = None Text
        , logFormat = None Text
        , replicas = None Natural
        , retention = None Text
        , storage = None StorageSpec
        , volumes = None (List Kubernetes.Volume.Type)
        , volumeMounts = None (List Kubernetes.VolumeMount.Type)
        , externalUrl = None Text
        , routePrefix = None Text
        , paused = None Bool
        , nodeSelector = None (Map Text Text)
        , resources = None Kubernetes.ResourceRequirements.Type
        , affinity = None Kubernetes.Affinity.Type
        , tolerations = None (List Kubernetes.Toleration.Type)
        , securityContext = None Kubernetes.PodSecurityContext.Type
        , serviceAccountName = None Text
        , listenLocal = None Bool
        , containers = None (List Kubernetes.Container.Type)
        , initContainers = None (List Kubernetes.Container.Type)
        , priorityClassName = None Text
        , additionalPeers = None (List Text)
        , clusterAdvertiseAddress : None Text
        , portName = None Text
        }
      }

let test = AlertmanagerSpec::{=}

in  AlertmanagerSpec
