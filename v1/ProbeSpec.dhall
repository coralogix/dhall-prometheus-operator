let ProberSpec =
        ./ProberSpec.dhall sha256:12aa19e0e0a2a32ed6e8f609df1071e5348d539e9d7374dcde15b35a0f13900b
      ? ./ProberSpec.dhall

let ProbeTargets =
        ./ProbeTargets.dhall sha256:67308c3bc5d8d8f140746e0e9cf49ff9fb341b1100a536a2c54adb02b922b80e
      ? ./ProbeTargets.dhall

in  { Type =
        { jobName : Optional Text
        , prober : Optional ProberSpec.Type
        , module : Optional Text
        , targets : Optional ProbeTargets.Type
        , interval : Optional Text
        , scrapeTimeout : Optional Text
        }
    , default =
      { jobName = None Text
      , prober = None ProberSpec.Type
      , module = None Text
      , targets = None ProbeTargets.Type
      , interval = None Text
      , scrapeTimeout = None Text
      }
    }
