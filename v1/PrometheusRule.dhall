let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let PrometheusRuleSpec =
        ./PrometheusRuleSpec.dhall sha256:eaa770c9ecb0f1614c3d9cd4cefaa9af77c24fc23fb52beca7aac5f0af04e970
      ? ./PrometheusRuleSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : PrometheusRuleSpec.Type
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1", kind = "PrometheusRule" }
    }
