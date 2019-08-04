let Kubernetes = (../../ImportTypes.dhall).Kubernetes

in    { bucket : Optional Text, credentials : Kubernetes.SecretKeySelector }
    : Type
