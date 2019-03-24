let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let ThanosS3Spec = ../../types/v1/ThanosS3Spec.dhall

in    { bucket =
          None Text
      , endpoint =
          None Text
      , accessKey =
          None Kubernetes.core.v1.SecretKeySelector
      , secretKey =
          None Kubernetes.core.v1.SecretKeySelector
      , insecure =
          None Bool
      , signatureVersion2 =
          None Bool
      , encryptsse =
          None Bool
      }
    : ThanosS3Spec
