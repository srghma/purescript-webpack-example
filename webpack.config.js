'use strict';

module.exports = {
  debug: true,

  devtool: 'eval-source-map',

  devServer: {
    contentBase: '.',
    port: 4008,
    stats: 'errors-only'
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
          src: [ 'src/Example/**/*.purs' ],
          bundle: false,
          psc: 'psa',
          pscIde: false,
          pscPackage: true
        }
      },
    ]
  },

  resolve: {
    modulesDirectories: [ 'node_modules', 'bower_components' ],
    extensions: [ '', '.purs', '.js']
  }
};
