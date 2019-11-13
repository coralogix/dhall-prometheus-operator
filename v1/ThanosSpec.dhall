let Kubernetes = (../imports.dhall).Kubernetes.Type

in  { Type =
        { peers : Optional Text
        , image : Optional Text
        , version : Optional Text
        , tag : Optional Text
        , sha : Optional Text
        , baseImage : Optional Text
        , resources : Optional Kubernetes.ResourceRequirements
        , objectStorageConfig : Kubernetes.SecretKeySelector
        , grpcAdvertiseAddress : Optional Text
        , clusterAdvertiseAddress : Optional Text
        }
    , default =
        { peers = None Text
        , image = None Text
        , version = None Text
        , tag = None Text
        , sha = None Text
        , baseImage = None Text
        , resources = None Kubernetes.ResourceRequirements
        , grpcAdvertiseAddress = None Text
        , clusterAdvertiseAddress = None Text
        }
    }
