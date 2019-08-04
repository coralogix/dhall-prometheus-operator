let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ThanosGCSSpec = ./ThanosGCSSpec.dhall

let ThanosS3Spec = ./ThanosS3Spec.dhall

let Common =
      { peers :
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
          Optional Kubernetes.SecretKeySelector
      , grpcAdvertiseAddress :
          Optional Text
      , clusterAdvertiseAddress :
          Optional Text
      }

in  < S3 :
        Common ⩓ { s3 : ThanosS3Spec }
    | GCS :
        Common ⩓ { gcs : ThanosGCSSpec }
    >
