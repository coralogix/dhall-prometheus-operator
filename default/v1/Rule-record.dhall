let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let Rule = ../../types/v1/Rule.dhall

in    λ(_params : { expr : Kubernetes.util.IntOrString, record : Text })
    →   { record =
            Some _params.record
        , alert =
            None Text
        , expr =
            _params.expr
        , for =
            None Text
        , labels =
            None (List { mapKey : Text, mapValue : Text })
        , annotations =
            None (List { mapKey : Text, mapValue : Text })
        }
      : Rule
