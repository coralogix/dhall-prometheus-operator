let BasicAuth = ./BasicAuth.dhall

let TLSConfig = ./TLSConfig.dhall

let Common = { host : Text, tlsConfig : Optional TLSConfig }

in  < BasicAuth :
        Common ⩓ { basicAuth : BasicAuth }
    | BearerToken :
        Common ⩓ { bearerToken : Text }
    | BearerTokenFile :
        Common ⩓ { bearerTokenFile : Text }
    >
