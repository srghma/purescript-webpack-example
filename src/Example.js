'use strict';

exports.isServerSide = typeof document === 'undefined';

console.log('image from Example.js', require('./logo.png'))
