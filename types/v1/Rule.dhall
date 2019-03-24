let Kubernetes = (../../ImportTypes.dhall).Kubernetes

in    { record :
          Optional Text
      , alert :
          Optional Text
      , expr :
          Kubernetes.util.IntOrString
      , for :
          Optional Text
      , labels :
          Optional (List { mapKey : Text, mapValue : Text })
      , annotations :
          Optional (List { mapKey : Text, mapValue : Text })
      }
    : Type
