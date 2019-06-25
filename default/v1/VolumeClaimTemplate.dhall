let VolumeClaimTemplate = ../../types/v1/VolumeClaimTemplate.dhall

let VolumeClaimTemplateSpec = ../../types/v1/VolumeClaimTemplateSpec.dhall

in  λ(spec : VolumeClaimTemplateSpec) → { spec = spec } : VolumeClaimTemplate
