let imports = ../imports.dhall

let Map = imports.Prelude.Map

let Kubernetes = imports.Kubernetes.Type

let AlertingSpec = ./AlertingSpec.dhall

let APIServerConfig = ./APIServerConfig.dhall

let QuerySpec = ./QuerySpec.dhall

let RemoteWriteSpec = ./RemoteWriteSpec.dhall

let RemoteReadSpec = ./RemoteReadSpec.dhall

let Rules = ./Rules.dhall

let StorageSpec = ./StorageSpec.dhall

let ThanosSpec = ./ThanosSpec.dhall

let NamespaceSelector = ./NamespaceSelector.dhall

in  { Type =
        { podMetadata : Optional Kubernetes.ObjectMeta
        , serviceMonitorSelector : Optional Kubernetes.LabelSelector
        , serviceMonitorNamespaceSelector : Optional NamespaceSelector
        , podMonitorSelector : Optional Kubernetes.LabelSelector
        , podMonitorNamespaceSelector : Optional Kubernetes.LabelSelector
        , version : Optional Text
        , tag : Optional Text
        , sha : Optional Text
        , paused : Optional Bool
        , image : Optional Text
        , baseImage : Optional Text
        , imagePullSecrets : List Kubernetes.LocalObjectReference
        , replicas : Optional Natural
        , replicaExternalLabelName : Optional Text
        , prometheusExternalLabelName : Optional Text
        , retention : Optional Text
        , retentionSize : Optional Text
        , walCompression : Optional Bool
        , logLevel : Optional Text
        , logFormat : Optional Text
        , scrapeInterval : Optional Text
        , evaluationInterval : Optional Text
        , rules : Optional Rules.Type
        , externalLabels : Map Text Text
        , enableAdminAPI : Optional Bool
        , externalUrl : Optional Text
        , routePrefix : Optional Text
        , query : Optional QuerySpec.Type
        , storage : Optional StorageSpec
        , volumes : List Kubernetes.Volume
        , ruleSelector : Optional Kubernetes.LabelSelector
        , ruleNamespaceSelector : Optional NamespaceSelector
        , alerting : Optional AlertingSpec.Type
        , resources : Optional Kubernetes.ResourceRequirements
        , nodeSelector : Map Text Text
        , serviceAccountName : Optional Text
        , secrets : List Text
        , configMaps : List Text
        , affinity : Optional Kubernetes.Affinity
        , tolerations : List Kubernetes.Toleration
        , remoteWrite : List RemoteWriteSpec.Type
        , remoteRead : List RemoteReadSpec.Type
        , securityContext : Optional Kubernetes.PodSecurityContext
        , listenLocal : Optional Bool
        , containers : List Kubernetes.Container
        , initContainers : List Kubernetes.Container
        , additionalScrapeConfigs : Optional Kubernetes.SecretKeySelector
        , additionalAlertRelabelConfigs : Optional Kubernetes.SecretKeySelector
        , additionalAlertManagerConfigs : Optional Kubernetes.SecretKeySelector
        , apiserverConfig : Optional APIServerConfig.Union
        , thanos : Optional ThanosSpec.Type
        , priorityClassName : Optional Text
        , portName : Optional Text
        }
    , default =
        { podMetadata = None Kubernetes.ObjectMeta
        , serviceMonitorSelector = None Kubernetes.LabelSelector
        , serviceMonitorNamespaceSelector = None NamespaceSelector
        , podMonitorSelector = None Kubernetes.LabelSelector
        , podMonitorNamespaceSelector = None Kubernetes.LabelSelector
        , version = None Text
        , tag = None Text
        , sha = None Text
        , paused = None Bool
        , image = None Text
        , baseImage = None Text
        , imagePullSecrets = [] : List Kubernetes.LocalObjectReference
        , replicas = None Natural
        , replicaExternalLabelName = None Text
        , prometheusExternalLabelName = None Text
        , retention = None Text
        , retentionSize = None Text
        , walCompression = None Bool
        , logLevel = None Text
        , logFormat = None Text
        , scrapeInterval = None Text
        , evaluationInterval = None Text
        , rules = None Rules.Type
        , externalLabels = [] : Map Text Text
        , enableAdminAPI = None Bool
        , externalUrl = None Text
        , routePrefix = None Text
        , query = None QuerySpec.Type
        , storage = None StorageSpec
        , volumes = [] : List Kubernetes.Volume
        , ruleSelector = None Kubernetes.LabelSelector
        , ruleNamespaceSelector = None NamespaceSelector
        , alerting = None AlertingSpec.Type
        , resources = None Kubernetes.ResourceRequirements
        , nodeSelector = [] : Map Text Text
        , serviceAccountName = None Text
        , secrets = [] : List Text
        , configMaps = [] : List Text
        , affinity = None Kubernetes.Affinity
        , tolerations = [] : List Kubernetes.Toleration
        , remoteWrite = [] : List RemoteWriteSpec.Type
        , remoteRead = [] : List RemoteReadSpec.Type
        , securityContext = None Kubernetes.PodSecurityContext
        , listenLocal = None Bool
        , containers = [] : List Kubernetes.Container
        , initContainers = [] : List Kubernetes.Container
        , additionalScrapeConfigs = None Kubernetes.SecretKeySelector
        , additionalAlertRelabelConfigs = None Kubernetes.SecretKeySelector
        , additionalAlertManagerConfigs = None Kubernetes.SecretKeySelector
        , apiserverConfig = None APIServerConfig.Union
        , thanos = None ThanosSpec.Type
        , priorityClassName = None Text
        , portName = None Text
        }
    }
