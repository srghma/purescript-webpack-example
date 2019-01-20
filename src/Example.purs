module Example (example) where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Effect.Unsafe (unsafePerformEffect)

import Web.DOM.Internal.Types (Element)

import React as React

import ReactDOM as ReactDOM

import Example.App (app)

example :: Unit
example = unsafePerformEffect $ do
  let appEl = React.createLeafElement app { }

  if isServerSide
     then void (log (ReactDOM.renderToString appEl))
     else void (getElementById "app" >>= ReactDOM.render appEl)

  hot

foreign import isServerSide :: Boolean

foreign import getElementById :: String -> Effect Element

foreign import hot :: Effect Unit
