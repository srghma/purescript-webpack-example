module Entry (module Entry) where

import Prelude (Unit)

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Unsafe (unsafePerformEff)

import Prelude ((<>)) as Entry

import Example.Test (testing) as Entry

import Example.Foo (bar, foo, foot, jaz, meter) as Entry

import Example.Foo.Baz (baz) as Entry

foreign import hot :: forall eff. Eff eff Unit

result :: Unit
result = unsafePerformEff hot
