let NamespaceSelector =
      < Any : { any : Bool } | MatchNames : { matchNames : List Text } >

let test =
      { any = NamespaceSelector.Any { any = True }
      , matchNames =
          NamespaceSelector.MatchNames { matchNames = [ "example-name" ] }
      }

in  NamespaceSelector
