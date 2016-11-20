'use strict';

var webpack = require('webpack');

module.exports = {
  debug: true,

  devtool: 'eval-source-map',

  devServer: {
    contentBase: '.',
    port: 4008,
    stats: { colors: true }
  },

  entry: './src/Example.purs',

  output: {
    path: __dirname,
    pathinfo: true,
    filename: 'bundle.js'
  },

  module: {
    loaders: [
      {
        test: /\.purs$/,
        loader: 'purs-loader',
        query: {
          src: [ 'bower_components/purescript-*/src/**/*.purs', 'src/**/*.purs' ],
          bundle: false,
          psc: 'psa',
          pscIde: true
        }
      },
    ]
  },

  resolve: {
    modulesDirectories: [ 'node_modules', 'bower_components' ],
    extensions: [ '', '.purs', '.js']
  },

  plugins: [
    new webpack.DllReferencePlugin({
      context: __dirname,
      manifest: require('./vendor-manifest.json')
    })
  ]
};
