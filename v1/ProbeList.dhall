let Kubernetes = (../imports.dhall).Kubernetes

let Probe = ./Probe.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : Kubernetes.ListMeta.Type
        , items : Optional (List Probe.Type)
        }
    , default = { apiVersion = "monitoring.coreos.com/v1", kind = "ProbeList" }
    }
