let ImportTypes = ../../ImportTypes.dhall

let Kubernetes = ImportTypes.Kubernetes

let Map = ImportTypes.Prelude.Map

let AlertingSpec = ../../types/v1/AlertingSpec.dhall

let APIServerConfig = ../../types/v1/APIServerConfig.dhall

let PrometheusSpec = ../../types/v1/PrometheusSpec.dhall

let QuerySpec = ../../types/v1/QuerySpec.dhall

let RemoteWriteSpec = ../../types/v1/RemoteWriteSpec.dhall

let RemoteReadSpec = ../../types/v1/RemoteReadSpec.dhall

let Rules = ../../types/v1/Rules.dhall

let StorageSpec = ../../types/v1/StorageSpec.dhall

let ThanosSpec = ../../types/v1/ThanosSpec.dhall

let NamespaceSelector = ../../types/v1/NamespaceSelector.dhall

in    { podMetadata =
          None Kubernetes.ObjectMeta
      , serviceMonitorSelector =
          None Kubernetes.LabelSelector
      , serviceMonitorNamespaceSelector =
          None NamespaceSelector
      , podMonitorSelector =
          None Kubernetes.LabelSelector
      , podMonitorNamespaceSelector =
          None Kubernetes.LabelSelector
      , version =
          None Text
      , tag =
          None Text
      , sha =
          None Text
      , paused =
          None Bool
      , image =
          None Text
      , baseImage =
          None Text
      , imagePullSecrets =
          [] : List Kubernetes.LocalObjectReference
      , replicas =
          None Natural
      , replicaExternalLabelName =
          None Text
      , prometheusExternalLabelName =
          None Text
      , retention =
          None Text
      , retentionSize =
          None Text
      , walCompression =
          None Bool
      , logLevel =
          None Text
      , logFormat =
          None Text
      , scrapeInterval =
          None Text
      , evaluationInterval =
          None Text
      , rules =
          None Rules
      , externalLabels =
          [] : Map Text Text
      , enableAdminAPI =
          None Bool
      , externalUrl =
          None Text
      , routePrefix =
          None Text
      , query =
          None QuerySpec
      , storage =
          None StorageSpec
      , volumes =
          [] : List Kubernetes.Volume
      , ruleSelector =
          None Kubernetes.LabelSelector
      , ruleNamespaceSelector =
          None NamespaceSelector
      , alerting =
          None AlertingSpec
      , resources =
          None Kubernetes.ResourceRequirements
      , nodeSelector =
          [] : Map Text Text
      , serviceAccountName =
          None Text
      , secrets =
          [] : List Text
      , configMaps =
          [] : List Text
      , affinity =
          None Kubernetes.Affinity
      , tolerations =
          [] : List Kubernetes.Toleration
      , remoteWrite =
          [] : List RemoteWriteSpec
      , remoteRead =
          [] : List RemoteReadSpec
      , securityContext =
          None Kubernetes.PodSecurityContext
      , listenLocal =
          None Bool
      , containers =
          [] : List Kubernetes.Container
      , initContainers =
          [] : List Kubernetes.Container
      , additionalScrapeConfigs =
          None Kubernetes.SecretKeySelector
      , additionalAlertRelabelConfigs =
          None Kubernetes.SecretKeySelector
      , additionalAlertManagerConfigs =
          None Kubernetes.SecretKeySelector
      , apiserverConfig =
          None APIServerConfig
      , thanos =
          None ThanosSpec
      , priorityClassName =
          None Text
      , portName =
          None Text
      }
    : PrometheusSpec
