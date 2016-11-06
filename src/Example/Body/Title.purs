module Example.Body.Title (title) where

import Prelude (Unit)

import React (ReactClass, ReactElement, createClassStateless) as React
import React.DOM (h1, text) as DOM

title :: React.ReactClass Unit
title = React.createClassStateless render
  where
  render :: Unit -> React.ReactElement
  render props = DOM.h1 [] [ DOM.text "Body Title" ]
