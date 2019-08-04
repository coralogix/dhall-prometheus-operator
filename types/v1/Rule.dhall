let ImportTypes = ../../ImportTypes.dhall

let Prelude = ImportTypes.Prelude

let Kubernetes = ImportTypes.Kubernetes

in    { record :
          Optional Text
      , alert :
          Optional Text
      , expr :
          Kubernetes.IntOrString
      , for :
          Optional Text
      , labels :
          Prelude.Map Text Text
      , annotations :
          Prelude.Map Text Text
      }
    : Type
