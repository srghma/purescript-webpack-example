module Example.Unused where

import Prelude
import Example.UnusedInUnused

unused :: forall t a. Category a => a t t
unused = identity

unused1 :: forall t a. Category a => a t t
unused1 = identity
