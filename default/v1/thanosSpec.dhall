let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ThanosGCSSpec = ../../types/v1/ThanosGCSSpec.dhall

let ThanosS3Spec = ../../types/v1/ThanosS3Spec.dhall

in  { peers =
        None Text
    , image =
        None Text
    , version =
        None Text
    , tag =
        None Text
    , sha =
        None Text
    , baseImage =
        None Text
    , resources =
        None Kubernetes.ResourceRequirements
    , objectStorageConfig =
        None Kubernetes.SecretKeySelector
    , grpcAdvertiseAddress =
        None Text
    , clusterAdvertiseAddress =
        None Text
    }
