'use strict';

const path = require('path');

const isWebpackDevServer = process.argv.filter(a => path.basename(a) === 'webpack-dev-server').length;

const isWatch = process.argv.filter(a => a === '--watch').length

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
          src: [ 'bower_components/purescript-*/src/**/*.purs', 'src/**/*.purs' ],
          bundle: false,
          psc: 'psa',
          watch: isWebpackDevServer || isWatch,
          pscIde: false
        }
      },
    ]
  },

  resolve: {
    modulesDirectories: [ 'node_modules', 'bower_components' ],
    extensions: [ '', '.purs', '.js']
  },

  plugins: isWebpackDevServer || !isWatch ? [] : [
    function(){
      this.plugin('done', function(stats){
        process.stderr.write(stats.toString('errors-only'));
      });
    }
  ]
};
