module Example (example) where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Effect.Unsafe (unsafePerformEffect)

import Data.Maybe (fromJust)

import Web.HTML.HTMLDocument (toNonElementParentNode) as DOM
import Web.DOM.NonElementParentNode (getElementById) as DOM
import Web.HTML (window) as DOM
import Web.HTML.Window (document) as DOM

import Partial.Unsafe (unsafePartial)

import React as React
import ReactDOM as ReactDOM

import Example.App (app)

example :: Unit
example = unsafePerformEffect $ do
  let appEl = React.createLeafElement app {}

  if isServerSide
     then void (log (ReactDOM.renderToString appEl))
     else void do
        window <- DOM.window
        document <- DOM.document window
        let node = DOM.toNonElementParentNode document
        element <- DOM.getElementById "app" node
        let element' = unsafePartial (fromJust element)
        ReactDOM.render appEl element'

  hot

foreign import isServerSide :: Boolean

foreign import hot :: Effect Unit
