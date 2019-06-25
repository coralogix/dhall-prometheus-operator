{ Kubernetes =
    { core =
        { v1 =
            { Affinity =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.Affinity.dhall sha256:6221fdff507444ae05790364baa0be18eca18f7a8ba826672c66702a5d12e256
            , Container =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.Container.dhall sha256:c2d62c79f10368ae923aeac4a07708c85b9a987ce3a5ec7a081e335d100b2ab1
            , EmptyDirVolumeSource =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.EmptyDirVolumeSource.dhall sha256:46361385b85996dc46983a9c78d87ecc2e592ce4fc2f3df0bcc6f621bdd9d43d
            , LocalObjectReference =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.LocalObjectReference.dhall sha256:30bd7e61dae821a9532f640611a37bbebac3dc2ba02b82298a5c295280f1501f
            , PodSecurityContext =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.PodSecurityContext.dhall sha256:4dc5f6a586a21647d85251edf6d0348a972b5282f4d2871dfdcbbcc96b60e76b
            , ResourceRequirements =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.ResourceRequirements.dhall sha256:e6a52f46fab854b0ba0f7267cbea09584e22585481acfc0959e205dd5f1cb30a
            , SecretKeySelector =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.SecretKeySelector.dhall sha256:9c4e3bea86f7f805947acbf73e2886b8527517926ff5165981da2c47ed72c27c
            , SELinuxOptions =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.SELinuxOptions.dhall sha256:0d7767ca8fb43a84f1301ecce981d48f09d6d8891ef56f5342709e79e2b62064
            , Sysctl =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.Sysctl.dhall sha256:b8c3c0c4ceb36ba4e6674df5de20ad1d97e120b93b9ce9914a41d0036770dcc4
            , Toleration =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.Toleration.dhall sha256:311a6571242358d7b210631d506dc09e89671c2012bee5799c05f0a2c0024d71
            , PersistentVolumeClaim =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.PersistentVolumeClaim.dhall sha256:d400eb296094ffe392ece227c253808766ae83a2765cc7d0000971b4be9375d5
            , PersistentVolumeClaimSpec =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.api.core.v1.PersistentVolumeClaimSpec.dhall sha256:43149f4f9d239dc53959679504d6099229cb17b0d39c259945edc627bbde0b5b
            }
        }
    , meta =
        { v1 =
            { LabelSelector =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector.dhall sha256:42d27b2708fa26aff105ab514c1d2db674891c9f9cdee0850e0d647435aeddb7
            , ListMeta =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall sha256:96b722fff4d997e9c32020312107b8730133ff9aedee32c5a8e30d4b762e9dcb
            , ObjectMeta =
                https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall sha256:c952a3addcdff7cefb456dfdb8d173f068ccbc09fb971922f7b314cdd734c51f
            }
        }
    , util =
        { IntOrString =
            https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/ced5c10af3b80f2053697c8d2b4621044e5e3646/types/io.k8s.apimachinery.pkg.util.intstr.IntOrString.dhall sha256:04a91539533a52bf0bf114690cceee43b656915bd83c2731ce26ad31f516d47f
        }
    }
}
