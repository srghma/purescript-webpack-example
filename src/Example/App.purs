module Example.App (app) where

import Prelude

import React as React
import React.DOM (div, text) as DOM

import Example.Header (header)
import Example.Body (body)
import Example.Footer (footer)

app :: React.ReactClass { }
app = React.component "App" component
  where
  component this =
    pure { state: {}
         , render: render <$> React.getProps this
         }
    where
    render props =
      DOM.div []
              [ React.createLeafElement header { }
              , React.createLeafElement body { }
              , React.createLeafElement footer { }
              , DOM.text "a"
              ]
