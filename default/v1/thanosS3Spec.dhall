let Kubernetes = (../../ImportTypes.dhall).Kubernetes

in  { bucket =
        None Text
    , endpoint =
        None Text
    , accessKey =
        None Kubernetes.SecretKeySelector
    , secretKey =
        None Kubernetes.SecretKeySelector
    , insecure =
        None Bool
    , signatureVersion2 =
        None Bool
    , encryptsse =
        None Bool
    }
