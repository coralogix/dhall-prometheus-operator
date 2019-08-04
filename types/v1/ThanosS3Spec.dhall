let Kubernetes = (../../ImportTypes.dhall).Kubernetes

in    { bucket :
          Optional Text
      , endpoint :
          Optional Text
      , accessKey :
          Optional Kubernetes.SecretKeySelector
      , secretKey :
          Optional Kubernetes.SecretKeySelector
      , insecure :
          Optional Bool
      , signatureVersion2 :
          Optional Bool
      , encryptsse :
          Optional Bool
      }
    : Type
