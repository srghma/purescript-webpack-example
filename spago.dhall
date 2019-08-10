{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name =
    "purescript-webpack-example"
, dependencies =
    [ "effect"
    , "console"
    , "psci-support"
    , "react"
    , "react-dom"
    , "web-html"
    ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs", "test/**/*.purs" ]
}
