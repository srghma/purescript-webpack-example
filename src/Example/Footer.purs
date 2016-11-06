module Example.Footer (footer) where

import Prelude (Unit)

import React (ReactClass, ReactElement, createClassStateless)
import React.DOM (footer, text) as DOM

footer :: ReactClass Unit
footer = createClassStateless render
  where
  render :: Unit -> ReactElement
  render props = DOM.footer [] [ DOM.text footerText ]

foreign import footerText :: String
