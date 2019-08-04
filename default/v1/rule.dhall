let ImportTypes = ../../ImportTypes.dhall

let Map = ImportTypes.Prelude.Map

let Kubernetes = ImportTypes.Kubernetes

in  { record =
        None Text
    , alert =
        None Text
    , for =
        None Text
    , labels =
        [] : Map Text Text
    , annotations =
        [] : Map Text Text
    }
