let VolumeClaimTemplateSpec = ./VolumeClaimTemplateSpec.dhall

let VolumeClaimTemplate =
      { Type = { spec : VolumeClaimTemplateSpec.Type }, default = {=} }

let test = VolumeClaimTemplate::{ spec = VolumeClaimTemplateSpec::{=} }

in  VolumeClaimTemplate
