let ProbeTargetStaticConfig = ./ProbeTargetStaticConfig.dhall

let ProbeTargetIngress = ./ProbeTargetIngress.dhall

in  { Type =
        { staticConfig : Optional ProbeTargetStaticConfig.Type
        , ingress : Optional ProbeTargetIngress.Type
        }
    , default =
        { staticConfig = None ProbeTargetStaticConfig.Type
        , ingress = None ProbeTargetIngress.Type
        }
    }
