let imports = ../imports.dhall

let Kubernetes = imports.Kubernetes

let SecretOrConfigMap =
      < Secret : Kubernetes.SecretKeySelector.Type
      | ConfigMap : Kubernetes.ConfigMapKeySelector.Type
      >

in  { Type = SecretOrConfigMap
    , Secret = SecretOrConfigMap.Secret
    , ConfigMap = SecretOrConfigMap.ConfigMap
    }
