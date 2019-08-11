let Kubernetes = (../../ImportTypes.dhall).Kubernetes

in  { peers :
        Optional Text
    , image :
        Optional Text
    , version :
        Optional Text
    , tag :
        Optional Text
    , sha :
        Optional Text
    , baseImage :
        Optional Text
    , resources :
        Optional Kubernetes.ResourceRequirements
    , objectStorageConfig :
        Kubernetes.SecretKeySelector
    , grpcAdvertiseAddress :
        Optional Text
    , clusterAdvertiseAddress :
        Optional Text
    }
