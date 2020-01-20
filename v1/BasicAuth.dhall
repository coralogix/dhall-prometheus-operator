let Kubernetes = (../imports.dhall).Kubernetes

let SecretKeySelector = Kubernetes.Type.SecretKeySelector

let BasicAuth =
      { Type = { username : SecretKeySelector, password : SecretKeySelector }
      , default = {=}
      }

let test =
      let kubernetes = Kubernetes.default
      
      in  BasicAuth::{
          , username =
              kubernetes.SecretKeySelector ∧ { key = "example-username-key" }
          , password =
              kubernetes.SecretKeySelector ∧ { key = "example-password-key" }
          }

in  BasicAuth
