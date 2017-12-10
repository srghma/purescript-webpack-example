'use strict';

const path = require('path');

const webpack = require('webpack');

const glob = require('glob');

module.exports = {
  devtool: 'cheap-module-inline-source-map',

  entry: {
    vendor: [
      'ansi-regex',
      'debug',
      'fbjs',
      'inherits',
      'json3',
      'ms',
      'punycode',
      'querystring',
      'react',
      'react-dom',
      'requires-port',
      'strip-ansi',
      'url',
      'url-parse',
    ].concat(
      glob.sync(
        'bower_components/purescript-*/src/**/*.{purs,js}'
      ).map(file =>
        file.replace('bower_components/', '')
      )
    )
  },

  output: {
    path: __dirname,
    pathinfo: true,
    filename: '[name]-dll.js',
    library: '[name]_[hash]_dll'
  },

  module: {
    rules: [
      {
        test: /\.purs$/,
        use: [
          {
            loader: 'purs-loader',
            options: {
              src: [
                'bower_components/purescript-*/src/**/*.purs'
              ],
              bundle: false,
              psc: 'psa',
              watch: false,
              pscIde: false
            }
          }
        ]
      },
    ]
  },

  resolve: {
    modules: [ 'node_modules', 'bower_components' ],
    extensions: [ '.purs', '.js']
  },

  plugins: [
    new webpack.LoaderOptionsPlugin({
      debug: true
    }),

    new webpack.DllPlugin({
      path: path.join(__dirname, '[name]-manifest.json'),
      name: '[name]_[hash]_dll'
    })
  ]
};
