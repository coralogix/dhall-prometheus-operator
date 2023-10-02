let imports =
        ../imports.dhall sha256:e0de9b6a50d2dacac246762b205b7e0d2f279d6410d37a8c0602dfa167410b99
      ? ../imports.dhall

let Kubernetes = imports.Kubernetes

let Receiver =
        ./Receiver.dhall sha256:10acdd3e184cf84e1fa59db34d56fe926c9d661ac4a1b39adf4eabffcdb90564
      ? ./Receiver.dhall

let InhibitRule =
        ./InhibitRule.dhall sha256:a2c058aaf87549e02bf31cdd9cb1d45e386faffc98c53a6fc964a64f894c758c
      ? ./InhibitRule.dhall

let Generator =
      λ(Route : Type) →
        { Type =
            { route : Optional Route
            , receivers : Optional (List Receiver.Type)
            , inhibitRules : Optional (List InhibitRule.Type)
            }
        , default =
          { route = None Route
          , receivers = None (List Receiver.Type)
          , inhibitRules = None (List InhibitRule.Type)
          }
        }

let test = (Generator <>)::{=}

let Simple =
      let Route =
              ./Route.dhall sha256:07329d1a72d3e3a3410cf74e7295b095a20cbf2c21da9a5b60f907300590914d
            ? ./Route.dhall

      let SimpleRootRoute = Route.Root

      in  Generator SimpleRootRoute.Type

in  { Generator, Simple }
