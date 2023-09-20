let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Map = imports.Prelude.Map.Type

let Kubernetes = imports.Kubernetes

let AlertingSpec =
        ./AlertingSpec.dhall sha256:a86110361968bdc46d818901a3f5c832fe7fa6cc91f7444074430e25e4202e61
      ? ./AlertingSpec.dhall

let APIServerConfig =
        ./APIServerConfig.dhall sha256:26445538bef8b140e36b52b2915466053d7eabdbde9a744a58ec874fef1f1f98
      ? ./APIServerConfig.dhall

let ArbitraryFSAccessThroughSMsConfig =
        ./ArbitraryFSAccessThroughSMsConfig.dhall sha256:5da9e232ecba3823ce2f918148b8ba813e795426f795f227f198aac9225d62d7
      ? ./ArbitraryFSAccessThroughSMsConfig.dhall

let QuerySpec =
        ./QuerySpec.dhall sha256:39089f4d09e138ff2883540f94e981a1565834c4e4d01cfdcd9c5bbeff8aaa0b
      ? ./QuerySpec.dhall

let RemoteWriteSpec =
        ./RemoteWriteSpec.dhall sha256:797023d62e5fa639422d54014397f5062fb2b9e369cf258fe9d891bb946e054f
      ? ./RemoteWriteSpec.dhall

let RemoteReadSpec =
        ./RemoteReadSpec.dhall sha256:35f9b0d4d222bae5cc8f4a9fff22b56e69f29c191a9176242a68b10b3c873b09
      ? ./RemoteReadSpec.dhall

let Rules =
        ./Rules.dhall sha256:52e8a85f28b05b9d6b9c2bf99da75e10ab6199bc09af7c1c1a8c8b3c98edd918
      ? ./Rules.dhall

let StorageSpec =
        ./StorageSpec.dhall sha256:e73aa9d82a6b493998a99576bd22a60d658cde4d61a862ead79268450a58df55
      ? ./StorageSpec.dhall

let ThanosSpec =
        ./ThanosSpec.dhall sha256:c9e26e61bf4bab7ed01c9b2de1a09d2a2323a5dfbc20669f68c1b4271166308c
      ? ./ThanosSpec.dhall

let PrometheusRuleExcludeConfig =
        ./PrometheusRuleExcludeConfig.dhall sha256:9de82d0ac332d06b3cca9e96dee8208689bd3e0281f5f807361d4a72109fca18
      ? ./PrometheusRuleExcludeConfig.dhall

let EmbeddedObjectMetadata =
        ./EmbeddedObjectMetadata.dhall sha256:5a9eb9672ed429bd9d7e9aa333c30aef5c8e44ade302895f8af57f286248c8fa
      ? ./EmbeddedObjectMetadata.dhall

in  { Type =
        { podMetadata : Optional EmbeddedObjectMetadata.Type
        , serviceMonitorSelector : Optional Kubernetes.LabelSelector.Type
        , serviceMonitorNamespaceSelector :
            Optional Kubernetes.LabelSelector.Type
        , podMonitorSelector : Optional Kubernetes.LabelSelector.Type
        , podMonitorNamespaceSelector : Optional Kubernetes.LabelSelector.Type
        , probeSelector : Optional Kubernetes.LabelSelector.Type
        , probeNamespaceSelector : Optional Kubernetes.LabelSelector.Type
        , version : Optional Text
        , paused : Optional Bool
        , image : Optional Text
        , imagePullSecrets :
            Optional (List Kubernetes.LocalObjectReference.Type)
        , replicas : Optional Natural
        , replicaExternalLabelName : Optional Text
        , prometheusExternalLabelName : Optional Text
        , retention : Optional Text
        , retentionSize : Optional Text
        , disableCompaction : Optional Bool
        , walCompression : Optional Bool
        , logLevel : Optional Text
        , logFormat : Optional Text
        , scrapeInterval : Optional Text
        , scrapeTimeout : Optional Text
        , evaluationInterval : Optional Text
        , rules : Optional Rules.Type
        , externalLabels : Optional (Map Text Text)
        , enableAdminAPI : Optional Bool
        , externalUrl : Optional Text
        , routePrefix : Optional Text
        , query : Optional QuerySpec.Type
        , storage : Optional StorageSpec.Type
        , volumes : Optional (List Kubernetes.Volume.Type)
        , volumeMounts : Optional (List Kubernetes.VolumeMount.Type)
        , ruleSelector : Optional Kubernetes.LabelSelector.Type
        , ruleNamespaceSelector : Optional Kubernetes.LabelSelector.Type
        , alerting : Optional AlertingSpec.Type
        , resources : Optional Kubernetes.ResourceRequirements.Type
        , nodeSelector : Optional (Map Text Text)
        , serviceAccountName : Optional Text
        , secrets : Optional (List Text)
        , configMaps : Optional (List Text)
        , affinity : Optional Kubernetes.Affinity.Type
        , tolerations : Optional (List Kubernetes.Toleration.Type)
        , remoteWrite : Optional (List RemoteWriteSpec.Type)
        , remoteRead : Optional (List RemoteReadSpec.Type)
        , securityContext : Optional Kubernetes.PodSecurityContext.Type
        , listenLocal : Optional Bool
        , containers : Optional (List Kubernetes.Container.Type)
        , initContainers : Optional (List Kubernetes.Container.Type)
        , additionalScrapeConfigs : Optional Kubernetes.SecretKeySelector.Type
        , additionalAlertRelabelConfigs :
            Optional Kubernetes.SecretKeySelector.Type
        , additionalAlertManagerConfigs :
            Optional Kubernetes.SecretKeySelector.Type
        , apiserverConfig : Optional APIServerConfig.Type
        , thanos : Optional ThanosSpec.Type
        , priorityClassName : Optional Text
        , portName : Optional Text
        , arbitraryFSAccessThroughSMs :
            Optional ArbitraryFSAccessThroughSMsConfig.Type
        , overrideHonorLabels : Optional Bool
        , overrideHonorTimestamps : Optional Bool
        , ignoreNamespaceSelectors : Optional Bool
        , enforcedNamespaceLabel : Optional Text
        , prometheusRulesExcludedFromEnforce :
            Optional (List PrometheusRuleExcludeConfig.Type)
        , queryLogFile : Optional Text
        , enforcedSampleLimit : Optional Natural
        , allowOverlappingBlocks : Optional Bool
        }
    , default =
      { podMetadata = None EmbeddedObjectMetadata.Type
      , serviceMonitorSelector = None Kubernetes.LabelSelector.Type
      , serviceMonitorNamespaceSelector = None Kubernetes.LabelSelector.Type
      , podMonitorSelector = None Kubernetes.LabelSelector.Type
      , podMonitorNamespaceSelector = None Kubernetes.LabelSelector.Type
      , probeSelector = None Kubernetes.LabelSelector.Type
      , probeNamespaceSelector = None Kubernetes.LabelSelector.Type
      , version = None Text
      , paused = None Bool
      , image = None Text
      , imagePullSecrets = None (List Kubernetes.LocalObjectReference.Type)
      , replicas = None Natural
      , replicaExternalLabelName = None Text
      , prometheusExternalLabelName = None Text
      , retention = None Text
      , retentionSize = None Text
      , disableCompaction = None Bool
      , walCompression = None Bool
      , logLevel = None Text
      , logFormat = None Text
      , scrapeInterval = None Text
      , scrapeTimeout = None Text
      , evaluationInterval = None Text
      , rules = None Rules.Type
      , externalLabels = None (Map Text Text)
      , enableAdminAPI = None Bool
      , externalUrl = None Text
      , routePrefix = None Text
      , query = None QuerySpec.Type
      , storage = None StorageSpec.Type
      , volumes = None (List Kubernetes.Volume.Type)
      , volumeMounts = None (List Kubernetes.VolumeMount.Type)
      , ruleSelector = None Kubernetes.LabelSelector.Type
      , ruleNamespaceSelector = None Kubernetes.LabelSelector.Type
      , alerting = None AlertingSpec.Type
      , resources = None Kubernetes.ResourceRequirements.Type
      , nodeSelector = None (Map Text Text)
      , serviceAccountName = None Text
      , secrets = None (List Text)
      , configMaps = None (List Text)
      , affinity = None Kubernetes.Affinity.Type
      , tolerations = None (List Kubernetes.Toleration.Type)
      , remoteWrite = None (List RemoteWriteSpec.Type)
      , remoteRead = None (List RemoteReadSpec.Type)
      , securityContext = None Kubernetes.PodSecurityContext.Type
      , listenLocal = None Bool
      , containers = None (List Kubernetes.Container.Type)
      , initContainers = None (List Kubernetes.Container.Type)
      , additionalScrapeConfigs = None Kubernetes.SecretKeySelector.Type
      , additionalAlertRelabelConfigs = None Kubernetes.SecretKeySelector.Type
      , additionalAlertManagerConfigs = None Kubernetes.SecretKeySelector.Type
      , apiserverConfig = None APIServerConfig.Type
      , thanos = None ThanosSpec.Type
      , priorityClassName = None Text
      , portName = None Text
      , arbitraryFSAccessThroughSMs =
          None ArbitraryFSAccessThroughSMsConfig.Type
      , overrideHonorLabels = None Bool
      , overrideHonorTimestamps = None Bool
      , ignoreNamespaceSelectors = None Bool
      , enforcedNamespaceLabel = None Text
      , prometheusRulesExcludedFromEnforce =
          None (List PrometheusRuleExcludeConfig.Type)
      , queryLogFile = None Text
      , enforcedSampleLimit = None Natural
      , allowOverlappingBlocks = None Bool
      }
    }
