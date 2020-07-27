let Kubernetes = (../imports.dhall).Kubernetes

let ProbeSpec = ./ProbeSpec.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ObjectMeta.Type
        , spec : ProbeSpec.Type
        }
    , default = { apiVersion = "monitoring.coreos.com/v1", kind = "Probe" }
    }
