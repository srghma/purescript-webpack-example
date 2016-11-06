module Example (example) where

import Prelude (Unit, ($), bind, unit)

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Unsafe (unsafePerformEff)

import DOM.Node.Types (Element)

import React (createElement)

import ReactDOM (render)

import Example.App (app)

example :: Unit
example = unsafePerformEff $ do
  el <- getElementById "app"

  let appEl = createElement app unit []

  render appEl el

  hot

foreign import hot :: forall eff. Eff eff Unit

foreign import getElementById :: forall eff. String -> Eff eff Element
