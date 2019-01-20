module Example.Footer (footer) where

import Prelude

import React as React
import React.DOM (footer, text) as DOM

footer :: React.ReactClass { }
footer = React.component "Footer" component
  where
  component this =
    pure { state: {}
         , render: render <$> React.getProps this
         }
    where
    render _ =
      DOM.footer [ ]
                 [ DOM.text footerText ]

foreign import footerText :: String
