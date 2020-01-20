let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes.Type

let SecretOrConfigMap =
      < Secret : Kubernetes.SecretKeySelector
      | ConfigMap : Kubernetes.ConfigMapKeySelector
      >

in  { Type = SecretOrConfigMap
    , Secret = SecretOrConfigMap.Secret
    , ConfigMap = SecretOrConfigMap.ConfigMap
    }
