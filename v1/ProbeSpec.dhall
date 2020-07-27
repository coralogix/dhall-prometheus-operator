let ProberSpec = ./ProberSpec.dhall

let ProbeTargets = ./ProbeTargets.dhall

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
        , module = None Text
        , interval = None Text
        , scrapeTimeout = None Text
        }
    }
