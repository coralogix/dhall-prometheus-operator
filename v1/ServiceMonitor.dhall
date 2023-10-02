let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let ServiceMonitorSpec =
        ./ServiceMonitorSpec.dhall sha256:ecb532588e3daf9b0aa13181e9a9feb7afd2578764ee4c21f83afbbd8d38cd20
      ? ./ServiceMonitorSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : ServiceMonitorSpec.Type
        }
    , default =
      { apiVersion = "monitoring.coreos.com/v1", kind = "ServiceMonitor" }
    }
