let SecretKeySelector =
      (../../ImportTypes.dhall).Kubernetes.core.v1.SecretKeySelector

in    { username :
          Optional SecretKeySelector
      , password :
          Optional SecretKeySelector
      }
    : Type
