let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let BasicAuth =
        ./BasicAuth.dhall sha256:2ce5199f94352d1293242b1e97ab6bad6c29f34d8df163676c4487e3c5dae3af
      ? ./BasicAuth.dhall

let SafeTLSConfig =
        ./SafeTLSConfig.dhall sha256:33847e3bc9669b8e4666acb3deed9cd271ef5f45d4bfe1b36f0f416b4442c39d
      ? ./SafeTLSConfig.dhall

let HTTPConfig =
      { Type =
          { basicAuth : Optional BasicAuth.Type
          , bearerTokenSecret : Optional Kubernetes.SecretKeySelector.Type
          , tlsConfig : Optional SafeTLSConfig.Type
          , proxyURL : Optional Text
          }
      , default =
        { basicAuth = None BasicAuth.Type
        , bearerTokenSecret = None Kubernetes.SecretKeySelector.Type
        , tlsConfig = None SafeTLSConfig.Type
        , proxyURL = None Text
        }
      }

in  HTTPConfig
