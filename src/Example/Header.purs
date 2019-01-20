module Example.Header (header) where

import Prelude

import React as React
import React.DOM (header, text) as DOM

header :: React.ReactClass { }
header = React.component "Header" component
  where
  component this =
    pure { state: {}
         , render: render <$> React.getProps this
         }
    where
    render _ =
      DOM.header [ ]
                 [ DOM.text "Header" ]
