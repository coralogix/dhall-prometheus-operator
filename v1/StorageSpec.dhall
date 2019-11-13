let Kubernetes = (../imports.dhall).Kubernetes.Type

let VolumeClaimTemplate = ./VolumeClaimTemplate.dhall

in  < EmptyDir : { emptyDir : Kubernetes.EmptyDirVolumeSource }
    | VolumeClaimTemplate : { volumeClaimTemplate : VolumeClaimTemplate.Type }
    >
