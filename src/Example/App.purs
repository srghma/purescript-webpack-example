module Example.App (app) where

import Prelude (Unit, (<$>), unit)

import React (ReactClass, createClass, createElement, getProps, spec)
import React.DOM (div, text) as DOM

import Example.Header (header)
import Example.Body (body)
import Example.Footer (footer)

app :: ReactClass Unit
app = createClass (spec unit render)
  where
  render this = render' <$> getProps this
    where
    render' props =
      DOM.div []
              [ createElement header unit []
              , createElement body unit []
              , createElement footer unit []
              , DOM.text "a"
              ]
