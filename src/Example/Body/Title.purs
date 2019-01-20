module Example.Body.Title (title) where

import Prelude

import React as React
import React.DOM (h1, text) as DOM

title :: React.ReactClass { }
title = React.component "Title" component
  where
  component this =
    pure { state: {}
         , render: render <$> React.getProps this
         }
    where
    render _ = DOM.h1 [] [ DOM.text "Body Title" ]
