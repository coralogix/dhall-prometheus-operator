let Kubernetes = (../../ImportTypes.dhall).Kubernetes

in  { accessModes =
        [] : List Text
    , resources =
        None Kubernetes.ResourceRequirements
    , selector =
        None Kubernetes.LabelSelector
    , storageClassName =
        None Text
    , volumeMode =
        None Text
    , volumeName =
        None Text
    }
