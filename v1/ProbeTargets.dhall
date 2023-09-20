let ProbeTargetStaticConfig =
        ./ProbeTargetStaticConfig.dhall sha256:4951044922978b45e6bfa05197dd2a67bb53d015b24e7cf8361490c460288c65
      ? ./ProbeTargetStaticConfig.dhall

let ProbeTargetIngress =
        ./ProbeTargetIngress.dhall sha256:be2190ff7e7497c870bf343a1bd48c32c5d6aa804c8a12338d5900c7e702ac5b
      ? ./ProbeTargetIngress.dhall

in  { Type =
        { staticConfig : Optional ProbeTargetStaticConfig.Type
        , ingress : Optional ProbeTargetIngress.Type
        }
    , default =
      { staticConfig = None ProbeTargetStaticConfig.Type
      , ingress = None ProbeTargetIngress.Type
      }
    }
