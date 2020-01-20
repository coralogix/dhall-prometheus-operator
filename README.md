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
https://raw.githubusercontent.com/coralogix/dhall-prometheus-operator/v3.1.0/package.dhall sha256:fca0c036575706b102a4e32d1644d12dda057ae40c3d9b3f37ad45346917b14d
```

## Example Usage
### Example ServiceMonitor
```dhall
let kubernetes = https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/4ad58156b7fdbbb6da0543d8b314df899feca077/defaults.dhall sha256:4450e23dc81975d111650e06c0238862944bf699537af6cbacac9c7e471dfabe
let Kubernetes = https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/4ad58156b7fdbbb6da0543d8b314df899feca077/types.dhall sha256:e48e21b807dad217a6c3e631fcaf3e950062310bfb4a8bbcecc330eb7b2f60ed

let PrometheusOperator = (https://raw.githubusercontent.com/coralogix/dhall-prometheus-operator/v3.1.0/package.dhall).v1 sha256:fca0c036575706b102a4e32d1644d12dda057ae40c3d9b3f37ad45346917b14d

in PromethesOperator.ServiceMonitor::{
   , metadata =
         kubernetes.ObjectMeta // { name = "example" }
   , spec =
       PrometheusOperator.ServiceMonitorSpec::{
       , selector =
             kubernetes.LabelSelector 
          // { matchLabels =
                toMap { app = "example" }
             }
       , endpoints =
         [ Prometheus.Endpoint.Union.TargetPort
             Prometheus.Endpoint.TargetPort::{
             , targetPort = Kubernetes.IntOrString.String "example"
             , interval = Some "60s"
             , scrapeTimeout = Some "40s"
             }
         ]
       , namespaceSelector =
           Some
             ( Prometheus.NamespaceSelector.Any { any = True }
             )
       }
   }
```

## Maintainers
[Ari Becker](https://github.com/ari-becker)
[Oded David](https://github.com/oded-dd)

## Contributing
TBD

## License
[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) © Coralogix, Inc.
