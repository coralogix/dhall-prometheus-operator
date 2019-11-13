let SecretKeySelector = (../imports.dhall).Kubernetes.Type.SecretKeySelector

in  { Type = { username : SecretKeySelector, password : SecretKeySelector }
    , default = {=}
    }
