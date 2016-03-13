var Prelude = require('purescript-prelude/src/Prelude');

var test = require('./Example/Test');

var foo = require('./Example/Foo.purs');

var baz = require('./Example/Foo/Baz');

var jam = require('./jam');

console.log(Prelude, test, foo, baz, jam);
