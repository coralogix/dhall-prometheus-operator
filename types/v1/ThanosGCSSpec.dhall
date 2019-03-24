let Kubernetes = (../../ImportTypes.dhall).Kubernetes

in    { bucket :
          Optional Text
      , credentials :
          Kubernetes.core.v1.SecretKeySelector
      }
    : Type
