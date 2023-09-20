let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let SecretOrConfigMap =
      < Secret : Kubernetes.SecretKeySelector.Type
      | ConfigMap : Kubernetes.ConfigMapKeySelector.Type
      >

in  { Type = SecretOrConfigMap
    , Secret = SecretOrConfigMap.Secret
    , ConfigMap = SecretOrConfigMap.ConfigMap
    }
