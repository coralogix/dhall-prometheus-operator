let Kubernetes =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes

let PrometheusRule =
        ./PrometheusRule.dhall sha256:e7a5c48703ab955510176b2b5fa77e16b96a53fe174c5c58f04352eab83e7e0d
      ? ./PrometheusRule.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ListMeta.Type
        , items : Optional (List PrometheusRule.Type)
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1", kind = "PrometheusRuleList" }
    }
