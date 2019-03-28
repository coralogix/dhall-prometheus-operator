# dhall-prometheus-operator
[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)

> Dhall types for Kubernetes Prometheus Operator

This repository includes types, default records, and functions that produce default records in the [Dhall language](https://github.com/dhall-lang/dhall-lang) which model the Prometheus Operator API domain. They are based off the [Prometheus Operator documentation reference](https://github.com/coreos/prometheus-operator/blob/master/Documentation/api.md).

This allows the user to more easily generate type-safe Kubernetes resources for Prometheus/Alertmanager, through the use of the Dhall project's `dhall-to-yaml` tool.

### Note
This project relies upon resources provided by the [`dhall-kubernetes`](https://github.com/dhall-lang/dhall-kubernetes) project. However, as these resources are imported directly from `raw.githubusercontent.com`, they do not need to be manually installed.

## Install
For stability, users are encouraged to import from a tagged release, not from the master branch, and to watch for new releases. This project does not yet have rigorous testing set up for it and new commits on the master branch are prone to break compatibility and are almost sure to change the import hash for the expression.
```
https://raw.githubusercontent.com/coralogix/dhall-prometheus-operator/v1.0.0/default/package.dhall sha256:838e95bb1a7fa385bbfdfbd56e63d9c9c157064b399c6cbc58380b5266e28be1
https://raw.githubusercontent.com/coralogix/dhall-prometheus-operator/v1.0.0/types/package.dhall sha256:92f53c84d92cda3970414a4077071b95d02a0dc701cbfc4c32e1ec8acaa252de
```

## Usage
The following example configures a Prometheus Operator `ServiceMonitor` to monitor a Kafka service:
`serviceMonitor.dhall`
```haskell
let Prelude =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v6.0.0/Prelude/package.dhall sha256:e3be3dba308637ad7ab6d4ce9a11a342b087efbf2aa801c88a05a6babaae8e48

let PrometheusOperator =
      https://raw.githubusercontent.com/coralogix/dhall-prometheus-operator/v1.0.0/default/package.dhall sha256:838e95bb1a7fa385bbfdfbd56e63d9c9c157064b399c6cbc58380b5266e28be1

let PrometheusOperatorTypes =
      https://raw.githubusercontent.com/coralogix/dhall-prometheus-operator/v1.0.0/types/package.dhall sha256:92f53c84d92cda3970414a4077071b95d02a0dc701cbfc4c32e1ec8acaa252de

let ObjectMeta =
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/default/io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall sha256:87119d965aaca67f3dd98d8bfbc20b82db2999cb7f184018eb3eb5e951a23901

let ObjectMetaTypes =
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall sha256:c952a3addcdff7cefb456dfdb8d173f068ccbc09fb971922f7b314cdd734c51f

let LabelSelector =
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/default/io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector.dhall sha256:b565a778488d19a0fa69c851f158d191d7b65445f7e56a4486c5578f22c6d2cb

let LabelSelectorTypes =
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector.dhall sha256:42d27b2708fa26aff105ab514c1d2db674891c9f9cdee0850e0d647435aeddb7

let name = "kafka-metrics"

let nameLabel = Prelude.JSON.keyText "app.kubernetes.io/name" name

let namespace = "datastores"

let metadata =
          ObjectMeta { name = "kafka-metrics" }
        ⫽ { labels =
              Some
              [ nameLabel
              , Prelude.JSON.keyText "app.kubernetes.io/component" "kafka"
              ]
          , namespace =
              Some namespace
          }
      : ObjectMetaTypes

in      PrometheusOperator.v1.ServiceMonitor
        { spec =
                PrometheusOperator.v1.ServiceMonitorSpec
                { selector =
                      LabelSelector ⫽ { matchLabels = Some [ nameLabel ] }
                    : LabelSelectorTypes
                , endpoints =
                    [     PrometheusOperator.v1.Endpoint
                        ⫽ { port = Some name, interval = Some "20s" }
                      : PrometheusOperatorTypes.v1.Endpoint
                    ]
                }
              ⫽ { namespaceSelector =
                    Some
                    (     PrometheusOperator.v1.NamespaceSelector
                        ⫽ { matchNames = Some [ namespace ] }
                      : PrometheusOperatorTypes.v1.NamespaceSelector
                    )
                }
            : PrometheusOperatorTypes.v1.ServiceMonitorSpec
        }
      ⫽ { metadata = Some metadata }
    : PrometheusOperatorTypes.v1.ServiceMonitor

```

We then run this through `dhall-to-yaml` to generate our PromotheusOperator definition:
```bash
mkdir -p examples/out
dhall-to-yaml --omitNull < serviceMonitor.dhall > examples/out/servicceMonitor.yaml
```

And we get:
`examples/out/serviceMonitor.yaml`
```yaml
apiVersion: monitoring.coreos.com/v1
kind: ServiceMonitor
spec:
  selector:
    matchLabels:
      app.kubernetes.io/name: kafka-metrics
  endpoints:
  - interval: 20s
    port: kafka-metrics
  namespaceSelector:
    matchNames:
    - datastores
metadata:
  namespace: datastores
  name: kafka-metrics
  labels:
    app.kubernetes.io/name: kafka-metrics
    app.kubernetes.io/component: kafka
```

## Maintainers
[Ari Becker](https://github.com/ari-becker)
[Oded David](https://github.com/oded-dd)

## Contributing
TBD

## License
[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) © Coralogix, Inc.
