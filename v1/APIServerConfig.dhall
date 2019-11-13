let BasicAuth = ./BasicAuth.dhall

let TLSConfig = ./TLSConfig.dhall

let Common = { host : Text, tlsConfig : Optional TLSConfig.Type }

let BasicAuth = Common ⩓ { basicAuth : BasicAuth.Type }

let BearerToken = Common ⩓ { bearerToken : Text }

let BearerTokenFile = Common ⩓ { bearerTokenFile : Text }

let common = { tlsConfig = None TLSConfig.Type }

in  { Union =
        < BasicAuth : BasicAuth
        | BearerToken : BearerToken
        | BearerTokenFile : BearerTokenFile
        >
    , BasicAuth = { Type = BasicAuth, default = common }
    , BearerToken = { Type = BearerToken, default = common }
    , BearerTokenFile = { Type = BearerTokenFile, default = common }
    }
