let Kubernetes = (../imports.dhall).Kubernetes

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
