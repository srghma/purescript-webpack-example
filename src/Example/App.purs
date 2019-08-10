module Example.App (app) where

import React (ReactClass, ReactElement, statelessComponent, createLeafElement)
import React.DOM (div, text) as DOM

import Example.Header (header)
import Example.Body (body)
import Example.Footer (footer)

app :: ReactClass (Record ())
app = statelessComponent render
  where
  render :: (Record ()) -> ReactElement
  render props =
    DOM.div []
            [ createLeafElement header {}
            , createLeafElement body {}
            , createLeafElement footer {}
            , DOM.text "a"
            ]
