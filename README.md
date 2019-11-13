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
https://raw.githubusercontent.com/coralogix/dhall-prometheus-operator/v3.0.0/package.dhall sha256:8d78899ad6dac16db4fb4c3f832eb862d46c7cf4ab08e1e59e11ea63432c9d32
```

## Usage
See the examples in `test/examples.dhall`, which shows how to create a type-checked record of each Prometheus Operator API object.

## Maintainers
[Ari Becker](https://github.com/ari-becker)
[Oded David](https://github.com/oded-dd)

## Contributing
TBD

## License
[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) © Coralogix, Inc.
