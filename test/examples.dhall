let Kubernetes = (../imports.dhall).Kubernetes.Type

let kubernetes = (../imports.dhall).Kubernetes.default

let PrometheusOperator = (../package.dhall).v1

in  { alertingSpec = PrometheusOperator.AlertingSpec::{=}
    , alertmanager =
        PrometheusOperator.Alertmanager::{
        , metadata = kubernetes.ObjectMeta ⫽ { name = "example" }
        }
    , alertmanagerEndpoints =
        PrometheusOperator.AlertmanagerEndpoints::{
        , namespace = "default"
        , name = "example"
        , port = Kubernetes.IntOrString.String "example"
        }
    , alertmanagerList = PrometheusOperator.AlertmanagerList::{=}
    , alertmanagerSpec = PrometheusOperator.AlertmanagerSpec::{=}
    , apiServerConfig =
        { basicAuth =
            PrometheusOperator.APIServerConfig.Union.BasicAuth
              PrometheusOperator.APIServerConfig.BasicAuth::{
              , host = "example.com"
              , basicAuth =
                  PrometheusOperator.BasicAuth::{
                  , username =
                        kubernetes.SecretKeySelector
                      ∧ { key = "example-username-key" }
                  , password =
                        kubernetes.SecretKeySelector
                      ∧ { key = "example-password-key" }
                  }
              }
        , bearerToken =
            PrometheusOperator.APIServerConfig.Union.BearerToken
              PrometheusOperator.APIServerConfig.BearerToken::{
              , host = "example.com"
              , bearerToken = "example"
              }
        , bearerTokenFile =
            PrometheusOperator.APIServerConfig.Union.BearerTokenFile
              PrometheusOperator.APIServerConfig.BearerTokenFile::{
              , host = "example.com"
              , bearerTokenFile = "path/to/example"
              }
        }
    , basicAuth =
        PrometheusOperator.BasicAuth::{
        , username =
            kubernetes.SecretKeySelector ∧ { key = "example-username-key" }
        , password =
            kubernetes.SecretKeySelector ∧ { key = "example-password-key" }
        }
    , endpoint =
        { port =
            PrometheusOperator.Endpoint.Union.Port
              PrometheusOperator.Endpoint.Port::{ port = "example-port" }
        , targetPort =
            PrometheusOperator.Endpoint.Union.TargetPort
              PrometheusOperator.Endpoint.TargetPort::{
              , targetPort = Kubernetes.IntOrString.Int 8080
              }
        }
    , namespaceSelector =
        { any = PrometheusOperator.NamespaceSelector.Any { any = True }
        , matchNames =
            PrometheusOperator.NamespaceSelector.MatchNames
              { matchNames = [ "example-name" ] }
        }
    , prometheus =
        PrometheusOperator.Prometheus::{
        , metadata = kubernetes.ObjectMeta ⫽ { name = "example" }
        }
    , prometheusList = PrometheusOperator.PrometheusList::{=}
    , prometheusRule =
        PrometheusOperator.PrometheusRule::{
        , metadata = kubernetes.ObjectMeta ⫽ { name = "example" }
        }
    , prometheusRuleList = PrometheusOperator.PrometheusRuleList::{=}
    , prometheusRuleSpec = PrometheusOperator.PrometheusRuleSpec::{=}
    , prometheusSpec = PrometheusOperator.PrometheusSpec::{=}
    , querySpec = PrometheusOperator.QuerySpec::{=}
    , queueConfig = PrometheusOperator.QueueConfig::{=}
    , relabelConfig = PrometheusOperator.RelabelConfig::{=}
    , remoteReadSpec =
        PrometheusOperator.RemoteReadSpec::{ url = "example.com" }
    , remoteWriteSpec =
        PrometheusOperator.RemoteWriteSpec::{ url = "example.com" }
    , rule =
        PrometheusOperator.Rule::{
        , expr = Kubernetes.IntOrString.String "example"
        }
    , ruleGroup = PrometheusOperator.RuleGroup::{ name = "example" }
    , rules =
        PrometheusOperator.Rules::{ alert = PrometheusOperator.RulesAlert::{=} }
    , rulesAlert = PrometheusOperator.RulesAlert::{=}
    , serviceMonitor =
        PrometheusOperator.ServiceMonitor::{
        , metadata = kubernetes.ObjectMeta ⫽ { name = "example" }
        , spec =
            PrometheusOperator.ServiceMonitorSpec::{
            , selector = kubernetes.LabelSelector
            }
        }
    , serviceMonitorList = PrometheusOperator.ServiceMonitorList::{=}
    , serviceMonitorSpec =
        PrometheusOperator.ServiceMonitorSpec::{
        , selector = kubernetes.LabelSelector
        }
    , storageSpec =
        { emptyDir =
            PrometheusOperator.StorageSpec.EmptyDir
              { emptyDir = kubernetes.EmptyDirVolumeSource }
        , volumeClaimTemplate =
            PrometheusOperator.StorageSpec.VolumeClaimTemplate
              { volumeClaimTemplate =
                  PrometheusOperator.VolumeClaimTemplate::{
                  , spec = PrometheusOperator.VolumeClaimTemplateSpec::{=}
                  }
              }
        }
    , thanosSpec =
        PrometheusOperator.ThanosSpec::{
        , objectStorageConfig =
            kubernetes.SecretKeySelector ∧ { key = "example-key" }
        }
    , tlsConfig = PrometheusOperator.TLSConfig::{=}
    , volumeClaimTemplate =
        PrometheusOperator.VolumeClaimTemplate::{
        , spec = PrometheusOperator.VolumeClaimTemplateSpec::{=}
        }
    , volumeClaimTemplateSpec = PrometheusOperator.VolumeClaimTemplateSpec::{=}
    }
