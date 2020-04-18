module Example.Header (header) where

import React (ReactClass, ReactElement, statelessComponent)
import React.DOM (header, text) as DOM
import Example.Unused

header :: ReactClass (Record ())
header = statelessComponent render
  where
  render :: Record () -> ReactElement
  render props = DOM.header [] [ DOM.text "header" ]
