module Example.Body (body) where

import React (ReactClass, ReactElement, statelessComponent, createLeafElement)
import React.DOM (div, img, text) as DOM
import React.DOM.Props (src) as DOM

import Example.Body.Title (title)

body :: ReactClass (Record ())
body = statelessComponent render
  where
  render :: Record () -> ReactElement
  render props =
    DOM.div []
            [ createLeafElement title {}
            , DOM.text "Body"
            , DOM.img [ DOM.src logo ]
            ]

foreign import logo :: String
