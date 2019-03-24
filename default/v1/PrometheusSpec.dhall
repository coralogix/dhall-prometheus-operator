let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let AlertingSpec = ../../types/v1/AlertingSpec.dhall

let APIServerConfig = ../../types/v1/APIServerConfig.dhall

let PrometheusSpec = ../../types/v1/PrometheusSpec.dhall

let QuerySpec = ../../types/v1/QuerySpec.dhall

let RemoteWriteSpec = ../../types/v1/RemoteWriteSpec.dhall

let RemoteReadSpec = ../../types/v1/RemoteReadSpec.dhall

let Rules = ../../types/v1/Rules.dhall

let StorageSpec = ../../types/v1/StorageSpec.dhall

let ThanosSpec = ../../types/v1/ThanosSpec.dhall

in    { podMetadata =
          None Kubernetes.meta.v1.ObjectMeta
      , serviceMonitorSelector =
          None Kubernetes.meta.v1.LabelSelector
      , serviceMonitorNamespaceSelector =
          None Kubernetes.meta.v1.LabelSelector
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
          None (List Kubernetes.core.v1.LocalObjectReference)
      , replicas =
          None Natural
      , replicaExternalLabelName =
          None Text
      , prometheusExternalLabelName =
          None Text
      , retention =
          None Text
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
          None (List { mapKey : Text, mapValue : Text })
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
      , ruleSelector =
          None Kubernetes.meta.v1.LabelSelector
      , ruleNamespaceSelector =
          None Kubernetes.meta.v1.LabelSelector
      , alerting =
          None AlertingSpec
      , resources =
          None Kubernetes.core.v1.ResourceRequirements
      , nodeSelector =
          None (List { mapKey : Text, mapValue : Text })
      , serviceAccountName =
          None Text
      , secrets =
          None (List Text)
      , configMaps =
          None (List Text)
      , affinity =
          None Kubernetes.core.v1.Affinity
      , tolerations =
          None (List Kubernetes.core.v1.Toleration)
      , remoteWrite =
          None (List RemoteWriteSpec)
      , remoteRead =
          None (List RemoteReadSpec)
      , securityContext =
          None Kubernetes.core.v1.PodSecurityContext
      , listenLocal =
          None Bool
      , containers =
          None (List Kubernetes.core.v1.Container)
      , additionalScrapeConfigs =
          None Kubernetes.core.v1.SecretKeySelector
      , additionalAlertRelabelConfigs =
          None Kubernetes.core.v1.SecretKeySelector
      , additionalAlertManagerConfigs =
          None Kubernetes.core.v1.SecretKeySelector
      , apiserverConfig =
          None APIServerConfig
      , thanos =
          None ThanosSpec
      , priorityClassName =
          None Text
      }
    : PrometheusSpec
