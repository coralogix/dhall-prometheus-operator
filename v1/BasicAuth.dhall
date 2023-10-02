let Kubernetes =
      (   ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
        ? ../imports.dhall
      ).Kubernetes

let BasicAuth =
      { Type =
          { username : Kubernetes.SecretKeySelector.Type
          , password : Kubernetes.SecretKeySelector.Type
          }
      , default = {=}
      }

let test =
      BasicAuth::{
      , username = Kubernetes.SecretKeySelector::{
        , key = "example-username-key"
        }
      , password = Kubernetes.SecretKeySelector::{
        , key = "example-password-key"
        }
      }

in  BasicAuth
