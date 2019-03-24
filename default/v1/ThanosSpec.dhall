let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ThanosSpec = ../../types/v1/ThanosSpec.dhall

let ThanosGCSSpec = ../../types/v1/ThanosGCSSpec.dhall

let ThanosS3Spec = ../../types/v1/ThanosS3Spec.dhall

in    { peers =
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
          None Kubernetes.core.v1.ResourceRequirements
      , gcs =
          None ThanosGCSSpec
      , s3 =
          None ThanosS3Spec
      , objectStorageConfig =
          None Kubernetes.core.v1.SecretKeySelector
      , grpcAdvertiseAddress =
          None Text
      , clusterAdvertiseAddress =
          None Text
      }
    : ThanosSpec
