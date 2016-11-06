module Example.Header (header) where

import Prelude (Unit)

import React (ReactClass, ReactElement, createClassStateless)
import React.DOM (header, text) as DOM

header :: ReactClass Unit
header = createClassStateless render
  where
  render :: Unit -> ReactElement
  render props = DOM.header [] [ DOM.text "header" ]
