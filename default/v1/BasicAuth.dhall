let SecretKeySelector =
      (../../ImportTypes.dhall).Kubernetes.core.v1.SecretKeySelector

let BasicAuth = ../../types/v1/BasicAuth.dhall

in    λ ( _params
        : { username : SecretKeySelector, password : SecretKeySelector }
        )
    →   { username = Some _params.username, password = Some _params.password }
      : BasicAuth
