module Example.UnusedInUnused where

import Prelude

unused_in_unused :: forall t a. Category a => a t t
unused_in_unused = identity

unused_in_unused1 :: forall t a. Category a => a t t
unused_in_unused1 = identity
