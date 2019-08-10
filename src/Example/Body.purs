module Example.Body (body) where

import Prelude (unit)

import React (ReactClass, ReactElement, statelessComponent, createLeafElement)
import React.DOM (div, text) as DOM

import Example.Body.Title (title)

body :: ReactClass (Record ())
body = statelessComponent render
  where
  render :: Record () -> ReactElement
  render props =
    DOM.div []
            [ createLeafElement title {}
            , DOM.text "Body"
            ]
