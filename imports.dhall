{ Kubernetes =
    { Type =
        https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/4ad58156b7fdbbb6da0543d8b314df899feca077/types.dhall sha256:e48e21b807dad217a6c3e631fcaf3e950062310bfb4a8bbcecc330eb7b2f60ed
    , default =
        https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/4ad58156b7fdbbb6da0543d8b314df899feca077/defaults.dhall sha256:4450e23dc81975d111650e06c0238862944bf699537af6cbacac9c7e471dfabe
    }
, Prelude =
    https://raw.githubusercontent.com/dhall-lang/dhall-lang/v11.1.0/Prelude/package.dhall sha256:99462c205117931c0919f155a6046aec140c70fb8876d208c7c77027ab19c2fa
}
