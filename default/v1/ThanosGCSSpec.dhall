let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ThanosGCSSpec = ../../types/v1/ThanosGCSSpec.dhall

in    λ(_param : { credentials : Kubernetes.core.v1.SecretKeySelector })
    → { bucket = None Text, credentials = _param.credentials } : ThanosGCSSpec
