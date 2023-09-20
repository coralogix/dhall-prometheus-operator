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

let TLSConfig =
        ./TLSConfig.dhall sha256:58054c5f17cbc2ae2bde2cf6acfec263045e9b841d8e60d0f5db152dffafa5cf
      ? ./TLSConfig.dhall

let PrometheusRuleExcludeConfig =
        ./PrometheusRuleExcludeConfig.dhall sha256:9de82d0ac332d06b3cca9e96dee8208689bd3e0281f5f807361d4a72109fca18
      ? ./PrometheusRuleExcludeConfig.dhall

let ThanosRulerSpec =
      { Type =
          { podMetadata : Optional EmbeddedObjectMetadata.Type
          , image : Optional Text
          , imagePullSecrets :
              Optional (List Kubernetes.LocalObjectReference.Type)
          , paused : Optional Bool
          , replicas : Optional Natural
          , nodeSelector : Optional (Map Text Text)
          , resources : Optional Kubernetes.ResourceRequirements.Type
          , affinity : Optional Kubernetes.Affinity.Type
          , tolerations : Optional (List Kubernetes.Toleration.Type)
          , securityContext : Optional Kubernetes.PodSecurityContext.Type
          , priorityClassName : Optional Text
          , serviceAccountName : Optional Text
          , storage : Optional StorageSpec.Type
          , volumes : Optional (List Kubernetes.Volume.Type)
          , objectStorageConfig : Optional Kubernetes.SecretKeySelector.Type
          , listenLocal : Optional Bool
          , queryEndpoints : Optional (List Text)
          , queryConfig : Optional Kubernetes.SecretKeySelector.Type
          , alertmanagersUrl : Optional (List Text)
          , alertmanagersConfig : Optional Kubernetes.SecretKeySelector.Type
          , ruleSelector : Optional Kubernetes.LabelSelector.Type
          , ruleNamespaceSelector : Optional Kubernetes.LabelSelector.Type
          , enforcedNamespaceLabel : Optional Text
          , prometheusRulesExcludedFromEnforce :
              Optional (List PrometheusRuleExcludeConfig.Type)
          , logLevel : Optional Text
          , logFormat : Optional Text
          , portName : Optional Text
          , evaluationInterval : Optional Text
          , retention : Optional Text
          , containers : Optional (List Kubernetes.Container.Type)
          , initContainers : Optional (List Kubernetes.Container.Type)
          , tracingConfig : Optional Kubernetes.SecretKeySelector.Type
          , labels : Optional (Map Text Text)
          , alertDropLabels : Optional (List Text)
          , externalPrefix : Optional Text
          , routePrefix : Optional Text
          , grpcServerTlsConfig : Optional TLSConfig.Type
          , alertQueryUrl : Optional Text
          }
      , default =
        { podMetadata = None EmbeddedObjectMetadata.Type
        , image = None Text
        , imagePullSecrets = None (List Kubernetes.LocalObjectReference.Type)
        , paused = None Bool
        , replicas = None Natural
        , nodeSelector = None (Map Text Text)
        , resources = None Kubernetes.ResourceRequirements.Type
        , affinity = None Kubernetes.Affinity.Type
        , tolerations = None (List Kubernetes.Toleration.Type)
        , securityContext = None Kubernetes.PodSecurityContext.Type
        , priorityClassName = None Text
        , storage = None StorageSpec.Type
        , serviceAccountName = None Text
        , volumes = None (List Kubernetes.Volume.Type)
        , objectStorageConfig = None Kubernetes.SecretKeySelector.Type
        , listenLocal = None Bool
        , queryEndpoints = None (List Text)
        , queryConfig = None Kubernetes.SecretKeySelector.Type
        , alertmanagersUrl = None (List Text)
        , alertmanagersConfig = None Kubernetes.SecretKeySelector.Type
        , ruleSelector = None Kubernetes.LabelSelector.Type
        , ruleNamespaceSelector = None Kubernetes.LabelSelector.Type
        , enforcedNamespaceLabel = None Text
        , prometheusRulesExcludedFromEnforce =
            None (List PrometheusRuleExcludeConfig.Type)
        , logLevel = None Text
        , logFormat = None Text
        , portName = None Text
        , evaluationInterval = None Text
        , retention = None Text
        , containers = None (List Kubernetes.Container.Type)
        , initContainers = None (List Kubernetes.Container.Type)
        , tracingConfig = None Kubernetes.SecretKeySelector.Type
        , labels = None (Map Text Text)
        , alertDropLabels = None (List Text)
        , externalPrefix = None Text
        , routePrefix = None Text
        , grpcServerTlsConfig = None TLSConfig.Type
        , alertQueryUrl = None Text
        }
      }

let test = ThanosRulerSpec::{=}

in  ThanosRulerSpec
