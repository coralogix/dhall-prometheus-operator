let imports = ../imports.dhall

let Map = imports.Prelude.Map.Type

let Kubernetes = imports.Kubernetes

let AlertingSpec = ./AlertingSpec.dhall

let APIServerConfig = ./APIServerConfig.dhall

let ArbitraryFSAccessThroughSMsConfig =
      ./ArbitraryFSAccessThroughSMsConfig.dhall

let QuerySpec = ./QuerySpec.dhall

let RemoteWriteSpec = ./RemoteWriteSpec.dhall

let RemoteReadSpec = ./RemoteReadSpec.dhall

let Rules = ./Rules.dhall

let StorageSpec = ./StorageSpec.dhall

let ThanosSpec = ./ThanosSpec.dhall

let NamespaceSelector = ./NamespaceSelector.dhall

in  { Type =
        { podMetadata : Optional Kubernetes.ObjectMeta.Type
        , serviceMonitorSelector : Optional Kubernetes.LabelSelector.Type
        , serviceMonitorNamespaceSelector :
            Optional Kubernetes.LabelSelector.Type
        , podMonitorSelector : Optional Kubernetes.LabelSelector.Type
        , podMonitorNamespaceSelector : Optional Kubernetes.LabelSelector.Type
        , version : Optional Text
        , tag : Optional Text
        , sha : Optional Text
        , paused : Optional Bool
        , image : Optional Text
        , baseImage : Optional Text
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
        , evaluationInterval : Optional Text
        , rules : Optional Rules.Type
        , externalLabels : Optional (Map Text Text)
        , enableAdminAPI : Optional Bool
        , externalUrl : Optional Text
        , routePrefix : Optional Text
        , query : Optional QuerySpec.Type
        , storage : Optional StorageSpec
        , volumes : Optional (List Kubernetes.Volume.Type)
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
        , apiserverConfig : Optional APIServerConfig.Union
        , thanos : Optional ThanosSpec.Type
        , priorityClassName : Optional Text
        , portName : Optional Text
        , arbitraryFSAccessThroughSMs :
            Optional ArbitraryFSAccessThroughSMsConfig.Type
        , overrideHonorLabels : Optional Bool
        , overrideHonorTimestamps : Optional Bool
        , ignoreNamespaceSelectors : Optional Bool
        , enforcedNamespaceLabel : Optional Text
        }
    , default =
        { podMetadata = None Kubernetes.ObjectMeta.Type
        , serviceMonitorSelector = None Kubernetes.LabelSelector.Type
        , serviceMonitorNamespaceSelector = None Kubernetes.LabelSelector.Type
        , podMonitorSelector = None Kubernetes.LabelSelector.Type
        , podMonitorNamespaceSelector = None Kubernetes.LabelSelector.Type
        , version = None Text
        , tag = None Text
        , sha = None Text
        , paused = None Bool
        , image = None Text
        , baseImage = None Text
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
        , evaluationInterval = None Text
        , rules = None Rules.Type
        , externalLabels = None (Map Text Text)
        , enableAdminAPI = None Bool
        , externalUrl = None Text
        , routePrefix = None Text
        , query = None QuerySpec.Type
        , storage = None StorageSpec
        , volumes = None (List Kubernetes.Volume.Type)
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
        , apiserverConfig = None APIServerConfig.Union
        , thanos = None ThanosSpec.Type
        , priorityClassName = None Text
        , portName = None Text
        , arbitraryFSAccessThroughSMs =
            None ArbitraryFSAccessThroughSMsConfig.Type
        , overrideHonorLabels = None Bool
        , overrideHonorTimestamps = None Bool
        , ignoreNamespaceSelectors = None Bool
        , enforcedNamespaceLabel = None Text
        }
    }
