let VolumeClaimTemplateSpec = ./VolumeClaimTemplateSpec.dhall

in  { Type = { spec : VolumeClaimTemplateSpec.Type }, default = {=} }
