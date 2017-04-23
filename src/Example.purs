module Example (example) where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (log)
import Control.Monad.Eff.Unsafe (unsafePerformEff)

import DOM.Node.Types (Element)

import React (createElement)

import ReactDOM (render, renderToString)

import Example.App (app)

example :: Unit
example = unsafePerformEff $ do
  let appEl = createElement app unit []

  if isServerSide
     then void (log (renderToString appEl))
     else void (getElementById "app" >>= render appEl)

  hot

foreign import isServerSide :: Boolean

foreign import getElementById :: forall eff. String -> Eff eff Element

foreign import hot :: forall eff. Eff eff Unit
