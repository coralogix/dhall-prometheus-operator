let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Map = imports.Prelude.Map.Type

let Kubernetes = imports.Kubernetes

let StorageSpec =
        ./StorageSpec.dhall sha256:e73aa9d82a6b493998a99576bd22a60d658cde4d61a862ead79268450a58df55
      ? ./StorageSpec.dhall

let EmbeddedObjectMetadata =
        ./EmbeddedObjectMetadata.dhall sha256:5a9eb9672ed429bd9d7e9aa333c30aef5c8e44ade302895f8af57f286248c8fa
      ? ./EmbeddedObjectMetadata.dhall

let AlertmanagerSpec =
      { Type =
          { podMetadata : Optional EmbeddedObjectMetadata.Type
          , image : Optional Text
          , version : Optional Text
          , imagePullSecrets :
              Optional (List Kubernetes.LocalObjectReference.Type)
          , secrets : Optional (List Text)
          , configMaps : Optional (List Text)
          , configSecret : Optional Text
          , logLevel : Optional Text
          , logFormat : Optional Text
          , replicas : Optional Natural
          , retention : Optional Text
          , storage : Optional StorageSpec.Type
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
          , alertmanagerConfigSelector : Optional Kubernetes.LabelSelector.Type
          , alertmanagerConfigNamespaceSelector :
              Optional Kubernetes.LabelSelector.Type
          }
      , default =
        { podMetadata = None EmbeddedObjectMetadata.Type
        , image = None Text
        , version = None Text
        , imagePullSecrets = None (List Kubernetes.LocalObjectReference.Type)
        , secrets = None (List Text)
        , configMaps = None (List Text)
        , configSecret = None Text
        , logLevel = None Text
        , logFormat = None Text
        , replicas = None Natural
        , retention = None Text
        , storage = None StorageSpec.Type
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
        , clusterAdvertiseAddress = None Text
        , portName = None Text
        , alertmanagerConfigSelector = None Kubernetes.LabelSelector.Type
        , alertmanagerConfigNamespaceSelector =
            None Kubernetes.LabelSelector.Type
        }
      }

let test = AlertmanagerSpec::{=}

in  AlertmanagerSpec
