'use strict';

exports.isServerSide = typeof document === 'undefined';

console.log('Image from Example.js', require('./logo.png'))
