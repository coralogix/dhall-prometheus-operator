let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ThanosGCSSpec = ./ThanosGCSSpec.dhall

let ThanosS3Spec = ./ThanosS3Spec.dhall

in    { peers :
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
          Optional Kubernetes.core.v1.ResourceRequirements
      , gcs :
          Optional ThanosGCSSpec
      , s3 :
          Optional ThanosS3Spec
      , objectStorageConfig :
          Optional Kubernetes.core.v1.SecretKeySelector
      , grpcAdvertiseAddress :
          Optional Text
      , clusterAdvertiseAddress :
          Optional Text
      }
    : Type
