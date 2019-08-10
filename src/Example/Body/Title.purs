module Example.Body.Title (title) where

import React (ReactClass, ReactElement, statelessComponent) as React
import React.DOM (h1, text) as DOM

title :: React.ReactClass (Record ())
title = React.statelessComponent render
  where
  render :: Record () -> React.ReactElement
  render props = DOM.h1 [] [ DOM.text "Body Title" ]
