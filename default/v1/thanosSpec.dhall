let Kubernetes = (../../ImportTypes.dhall).Kubernetes

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
    , grpcAdvertiseAddress =
        None Text
    , clusterAdvertiseAddress =
        None Text
    }
