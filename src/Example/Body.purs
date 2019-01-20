module Example.Body (body) where

import Prelude

import React as React
import React.DOM (div, text) as DOM

import Example.Body.Title (title)

body :: React.ReactClass { }
body = React.component "Body" component
  where
  component this =
    pure { state: {}
         , render: render <$> React.getProps this
         }
    where
    render _ =
      DOM.div [ ]
              [ React.createLeafElement title { }
              , DOM.text "Body"
              ]
