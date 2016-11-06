module Example.Body (body) where

import Prelude (Unit, unit)

import React (ReactClass, ReactElement, createClassStateless, createElement)
import React.DOM (div, text) as DOM

import Example.Body.Title (title)

body :: ReactClass Unit
body = createClassStateless render
  where
  render :: Unit -> ReactElement
  render props =
    DOM.div []
            [ createElement title unit []
            , DOM.text "Body"
            ]
