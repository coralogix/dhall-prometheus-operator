let imports = ../imports.dhall

let Map = imports.Prelude.Map

let IntOrString = imports.Kubernetes.Type.IntOrString

in  { Type =
        { record : Optional Text
        , alert : Optional Text
        , expr : IntOrString
        , for : Optional Text
        , labels : Map Text Text
        , annotations : Map Text Text
        }
    , default =
        { record = None Text
        , alert = None Text
        , for = None Text
        , labels = [] : Map Text Text
        , annotations = [] : Map Text Text
        }
    }
