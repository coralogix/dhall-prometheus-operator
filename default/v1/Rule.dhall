let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let Rule = ../../types/v1/Rule.dhall : Type

in    λ(_params : { expr : Kubernetes.util.IntOrString })
    →   { record =
            None Text
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
