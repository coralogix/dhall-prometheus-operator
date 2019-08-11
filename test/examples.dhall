let Kubernetes = (../ImportTypes.dhall).Kubernetes

let kubernetes = (../Imports.dhall).Kubernetes

let Types = ../types/v1/package.dhall

let defaults = ../default/v1/package.dhall

in  { alertingSpec =
        defaults.alertingSpec : Types.AlertingSpec
    , alertmanager =
            defaults.alertmanager
          ⫽ { metadata = defaults.alertmanager.metadata ⫽ { name = "example" } }
        : Types.Alertmanager
    , alertmanagerEndpoints =
            defaults.alertmanagerEndpoints
          ∧ { namespace =
                "default"
            , name =
                "example"
            , port =
                Kubernetes.IntOrString.String "example"
            }
        : Types.AlertmanagerEndpoints
    , alertmanagerList =
        defaults.alertmanagerList : Types.AlertmanagerList
    , alertmanagerSpec =
        defaults.alertmanagerSpec : Types.AlertmanagerSpec
    , apiServerConfig =
        { basicAuth =
            Types.APIServerConfig.BasicAuth
            (   defaults.apiServerConfig
              ∧ { host =
                    "example.com"
                , basicAuth =
                      defaults.basicAuth
                    ∧ { username =
                            kubernetes.SecretKeySelector
                          ∧ { key = "example-username-key" }
                      , password =
                            kubernetes.SecretKeySelector
                          ∧ { key = "example-password-key" }
                      }
                }
            )
        , bearerToken =
            Types.APIServerConfig.BearerToken
            (   defaults.apiServerConfig
              ∧ { host = "example.com", bearerToken = "example" }
            )
        , bearerTokenFile =
            Types.APIServerConfig.BearerTokenFile
            (   defaults.apiServerConfig
              ∧ { host = "example.com", bearerTokenFile = "path/to/example" }
            )
        }
    , basicAuth =
            defaults.basicAuth
          ∧ { username =
                kubernetes.SecretKeySelector ∧ { key = "example-username-key" }
            , password =
                kubernetes.SecretKeySelector ∧ { key = "example-password-key" }
            }
        : Types.BasicAuth
    , endpoint =
        { port =
            Types.Endpoint.Port (defaults.endpoint ∧ { port = "example-port" })
        , targetPort =
            Types.Endpoint.TargetPort
            (   defaults.endpoint
              ∧ { targetPort = Kubernetes.IntOrString.Int 8080 }
            )
        }
    , namespaceSelector =
        { any =
            Types.NamespaceSelector.Any { any = True }
        , matchNames =
            Types.NamespaceSelector.MatchNames
            { matchNames = [ "example-name" ] }
        }
    , prometheus =
            defaults.prometheus
          ⫽ { metadata = defaults.prometheus.metadata ∧ { name = "example" } }
        : Types.Prometheus
    , prometheusList =
        defaults.prometheusList : Types.PrometheusList
    , prometheusRule =
            defaults.prometheusRule
          ⫽ { metadata = defaults.prometheus.metadata ∧ { name = "example" } }
        : Types.PrometheusRule
    , prometheusRuleList =
        defaults.prometheusRuleList : Types.PrometheusRuleList
    , prometheusRuleSpec =
        defaults.prometheusRuleSpec : Types.PrometheusRuleSpec
    , prometheusSpec =
        defaults.prometheusSpec : Types.PrometheusSpec
    , querySpec =
        defaults.querySpec : Types.QuerySpec
    , queueConfig =
        defaults.queueConfig : Types.QueueConfig
    , relabelConfig =
        defaults.relabelConfig : Types.RelabelConfig
    , remoteReadSpec =
        defaults.remoteReadSpec ∧ { url = "example.com" } : Types.RemoteReadSpec
    , remoteWriteSpec =
          defaults.remoteWriteSpec ∧ { url = "example.com" }
        : Types.RemoteWriteSpec
    , rule =
          defaults.rule ∧ { expr = Kubernetes.IntOrString.String "example" }
        : Types.Rule
    , ruleGroup =
        defaults.ruleGroup ∧ { name = "example" } : Types.RuleGroup
    , rules =
        defaults.rules ∧ { alert = defaults.rulesAlert } : Types.Rules
    , rulesAlert =
        defaults.rulesAlert : Types.RulesAlert
    , serviceMonitor =
            defaults.serviceMonitor
          ⫽ { metadata =
                defaults.serviceMonitor.metadata ∧ { name = "example" }
            , spec =
                  defaults.serviceMonitor.spec
                ∧ { selector = kubernetes.LabelSelector }
            }
        : Types.ServiceMonitor
    , serviceMonitorList =
        defaults.serviceMonitorList : Types.ServiceMonitorList
    , serviceMonitorSpec =
          defaults.serviceMonitorSpec ∧ { selector = kubernetes.LabelSelector }
        : Types.ServiceMonitorSpec
    , storageSpec =
        { emptyDir =
            Types.StorageSpec.EmptyDir
            { emptyDir = kubernetes.EmptyDirVolumeSource }
        , volumeClaimTemplate =
            Types.StorageSpec.VolumeClaimTemplate
            { volumeClaimTemplate =
                  defaults.volumeClaimTemplate
                ∧ { spec = defaults.volumeClaimTemplateSpec }
            }
        }
    , thanosSpec =
            defaults.thanosSpec
          ∧ { objectStorageConfig =
                kubernetes.SecretKeySelector ∧ { key = "example-key" }
            }
        : Types.ThanosSpec
    , tlsConfig =
        defaults.tlsConfig : Types.TLSConfig
    , volumeClaimTemplate =
            defaults.volumeClaimTemplate
          ∧ { spec = defaults.volumeClaimTemplateSpec }
        : Types.VolumeClaimTemplate
    , volumeClaimTemplateSpec =
        defaults.volumeClaimTemplateSpec : Types.VolumeClaimTemplateSpec
    }
