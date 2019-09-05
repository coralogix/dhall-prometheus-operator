let ImportTypes = ../../ImportTypes.dhall

let Prelude = ImportTypes.Prelude

let Kubernetes = ImportTypes.Kubernetes

let AlertingSpec = ./AlertingSpec.dhall

let APIServerConfig = ./APIServerConfig.dhall

let QuerySpec = ./QuerySpec.dhall

let RemoteWriteSpec = ./RemoteWriteSpec.dhall

let RemoteReadSpec = ./RemoteReadSpec.dhall

let Rules = ./Rules.dhall

let StorageSpec = ./StorageSpec.dhall

let ThanosSpec = ./ThanosSpec.dhall

let NamespaceSelector = ./NamespaceSelector.dhall

in    { podMetadata :
          Optional Kubernetes.ObjectMeta
      , serviceMonitorSelector :
          Optional Kubernetes.LabelSelector
      , serviceMonitorNamespaceSelector :
          Optional NamespaceSelector
      , podMonitorSelector :
          Optional Kubernetes.LabelSelector
      , podMonitorNamespaceSelector :
          Optional Kubernetes.LabelSelector
      , version :
          Optional Text
      , tag :
          Optional Text
      , sha :
          Optional Text
      , paused :
          Optional Bool
      , image :
          Optional Text
      , baseImage :
          Optional Text
      , imagePullSecrets :
          List Kubernetes.LocalObjectReference
      , replicas :
          Optional Natural
      , replicaExternalLabelName :
          Optional Text
      , prometheusExternalLabelName :
          Optional Text
      , retention :
          Optional Text
      , retentionSize :
          Optional Text
      , walCompression :
          Optional Bool
      , logLevel :
          Optional Text
      , logFormat :
          Optional Text
      , scrapeInterval :
          Optional Text
      , evaluationInterval :
          Optional Text
      , rules :
          Optional Rules
      , externalLabels :
          Prelude.Map Text Text
      , enableAdminAPI :
          Optional Bool
      , externalUrl :
          Optional Text
      , routePrefix :
          Optional Text
      , query :
          Optional QuerySpec
      , storage :
          Optional StorageSpec
      , volumes :
          List Kubernetes.Volume
      , ruleSelector :
          Optional Kubernetes.LabelSelector
      , ruleNamespaceSelector :
          Optional NamespaceSelector
      , alerting :
          Optional AlertingSpec
      , resources :
          Optional Kubernetes.ResourceRequirements
      , nodeSelector :
          Prelude.Map Text Text
      , serviceAccountName :
          Optional Text
      , secrets :
          List Text
      , configMaps :
          List Text
      , affinity :
          Optional Kubernetes.Affinity
      , tolerations :
          List Kubernetes.Toleration
      , remoteWrite :
          List RemoteWriteSpec
      , remoteRead :
          List RemoteReadSpec
      , securityContext :
          Optional Kubernetes.PodSecurityContext
      , listenLocal :
          Optional Bool
      , containers :
          List Kubernetes.Container
      , initContainers :
          List Kubernetes.Container
      , additionalScrapeConfigs :
          Optional Kubernetes.SecretKeySelector
      , additionalAlertRelabelConfigs :
          Optional Kubernetes.SecretKeySelector
      , additionalAlertManagerConfigs :
          Optional Kubernetes.SecretKeySelector
      , apiserverConfig :
          Optional APIServerConfig
      , thanos :
          Optional ThanosSpec
      , priorityClassName :
          Optional Text
      , portName :
          Optional Text
      }
    : Type
