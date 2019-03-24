let Kubernetes = (../../ImportTypes.dhall).Kubernetes

let Rule = ../../types/v1/Rule.dhall

in    λ ( _params
        : { alert :
              Text
          , description :
              Text
          , summary :
              Text
          , expr :
              Text
          , for :
              Text
          , severity :
              Text
          }
        )
    →   { record =
            None Text
        , alert =
            Some _params.alert
        , expr =
            Kubernetes.util.IntOrString.String _params.expr
        , for =
            Some _params.for
        , labels =
            Some [ { mapKey = "severity", mapValue = _params.severity } ]
        , annotations =
            Some
            [ { mapKey = "summary", mapValue = _params.summary }
            , { mapKey = "description", mapValue = _params.description }
            ]
        }
      : Rule
