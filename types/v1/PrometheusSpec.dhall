let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let AlertingSpec = ./AlertingSpec.dhall

let APIServerConfig = ./APIServerConfig.dhall

let QuerySpec = ./QuerySpec.dhall

let RemoteWriteSpec = ./RemoteWriteSpec.dhall

let RemoteReadSpec = ./RemoteReadSpec.dhall

let Rules = ./Rules.dhall

let StorageSpec = ./StorageSpec.dhall

let ThanosSpec = ./ThanosSpec.dhall

in    { podMetadata :
          Optional Kubernetes.meta.v1.ObjectMeta
      , serviceMonitorSelector :
          Optional Kubernetes.meta.v1.LabelSelector
      , serviceMonitorNamespaceSelector :
          Optional Kubernetes.meta.v1.LabelSelector
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
          Optional (List Kubernetes.core.v1.LocalObjectReference)
      , replicas :
          Optional Natural
      , replicaExternalLabelName :
          Optional Text
      , prometheusExternalLabelName :
          Optional Text
      , retention :
          Optional Text
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
          Optional (List { mapKey : Text, mapValue : Text })
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
      , ruleSelector :
          Optional Kubernetes.meta.v1.LabelSelector
      , ruleNamespaceSelector :
          Optional Kubernetes.meta.v1.LabelSelector
      , alerting :
          Optional AlertingSpec
      , resources :
          Optional Kubernetes.core.v1.ResourceRequirements
      , nodeSelector :
          Optional (List { mapKey : Text, mapValue : Text })
      , serviceAccountName :
          Optional Text
      , secrets :
          Optional (List Text)
      , configMaps :
          Optional (List Text)
      , affinity :
          Optional Kubernetes.core.v1.Affinity
      , tolerations :
          Optional (List Kubernetes.core.v1.Toleration)
      , remoteWrite :
          Optional (List RemoteWriteSpec)
      , remoteRead :
          Optional (List RemoteReadSpec)
      , securityContext :
          Optional Kubernetes.core.v1.PodSecurityContext
      , listenLocal :
          Optional Bool
      , containers :
          Optional (List Kubernetes.core.v1.Container)
      , additionalScrapeConfigs :
          Optional Kubernetes.core.v1.SecretKeySelector
      , additionalAlertRelabelConfigs :
          Optional Kubernetes.core.v1.SecretKeySelector
      , additionalAlertManagerConfigs :
          Optional Kubernetes.core.v1.SecretKeySelector
      , apiserverConfig :
          Optional APIServerConfig
      , thanos :
          Optional ThanosSpec
      , priorityClassName :
          Optional Text
      }
    : Type
