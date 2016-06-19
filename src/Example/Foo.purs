module Example.Foo where

import Prelude ((<>))

import Example.Foo.Bar as B

foo :: String
foo = "A"

bar :: String
bar = "B"

jaz :: String
jaz = "E" <> B.jar <> B.jee

foreign import foot :: String

foreign import meter :: String
