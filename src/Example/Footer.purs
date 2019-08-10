module Example.Footer (footer) where

import React (ReactClass, ReactElement, statelessComponent)
import React.DOM (footer, text) as DOM

footer :: ReactClass (Record ())
footer = statelessComponent render
  where
  render :: Record () -> ReactElement
  render props = DOM.footer [] [ DOM.text footerText ]

foreign import footerText :: String
