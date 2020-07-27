let ProbeTargetStaticConfig = ./ProbeTargetStaticConfig.dhall

let ProbeTargetIngress = ./ProbeTargetIngress.dhall

in  { Type =
        { staticConfig : Optional ProbeTargetStaticConfig.Type
        , ingress : Optional ProbeTargetIngress.Type
        }
    }
