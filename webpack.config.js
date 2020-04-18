'use strict';

const path = require('path');

const HtmlWebpackPlugin = require('html-webpack-plugin');

const webpack = require('webpack');

const isWebpackDevServer = process.argv.some(a => path.basename(a) === 'webpack-dev-server');

const isWatch = process.argv.some(a => a === '--watch');

const plugins =
  isWebpackDevServer || !isWatch ? [] : [
    function(){
      this.plugin('done', function(stats){
        process.stderr.write(stats.toString('errors-only'));
      });
    }
  ]
;

module.exports = {
  devtool: 'eval-source-map',

  devServer: {
    contentBase: path.resolve(__dirname, 'dist'),
    port: 4008,
    stats: 'errors-only'
  },

  entry: './src/entrypoint.js',

  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js'
  },

  module: {
    rules: [
      {
        test: /\.purs$/,
        use: [
          {
            loader: path.resolve(__dirname, 'spago-loader', 'purs-loader'),
            options: {
              watch: isWebpackDevServer || isWatch,
              spagoAbsoluteOutputDir: path.resolve(__dirname, 'output'),
            }
          }
        ]
      },
      {
        test: /\.js$/,
        include: [path.resolve(__dirname, 'output')], // only files from `spago output`
        use: [
          {
            loader: path.resolve(__dirname, 'spago-loader', 'foreign-spago-js-loader'),
          }
        ]
      },
      {
        test: /\.(png|jpg|gif)$/i,
        use: [
          {
            loader: 'url-loader',
            options: {
              limit: 8192,
            },
          },
        ],
      },
    ]
  },

  resolve: {
    modules: [ 'node_modules' ],
    extensions: [ '.purs', '.js']
  },

  plugins: [
    new webpack.LoaderOptionsPlugin({
      debug: true
    }),
    new HtmlWebpackPlugin({
      title: 'purescript-webpack-example',
      template: 'index.html'
    })
  ].concat(plugins)
};
