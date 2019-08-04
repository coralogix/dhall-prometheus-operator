let SecretKeySelector = (../../ImportTypes.dhall).Kubernetes.SecretKeySelector

in  { username : SecretKeySelector, password : SecretKeySelector } : Type
