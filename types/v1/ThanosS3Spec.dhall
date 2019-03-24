let Kubernetes = (../../ImportTypes.dhall).Kubernetes

in    { bucket :
          Optional Text
      , endpoint :
          Optional Text
      , accessKey :
          Optional Kubernetes.core.v1.SecretKeySelector
      , secretKey :
          Optional Kubernetes.core.v1.SecretKeySelector
      , insecure :
          Optional Bool
      , signatureVersion2 :
          Optional Bool
      , encryptsse :
          Optional Bool
      }
    : Type
