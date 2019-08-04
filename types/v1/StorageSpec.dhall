let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let VolumeClaimTemplate = ./VolumeClaimTemplate.dhall

in    < EmptyDir :
          { emptyDir : Kubernetes.EmptyDirVolumeSource }
      | VolumeClaimTemplate :
          { volumeClaimTemplate : VolumeClaimTemplate }
      >
    : Type
