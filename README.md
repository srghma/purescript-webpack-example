# purescript-webpack-example (fast rebuilds)

Example project using PureScript with webpack that illustrates a
configuration geared towards fast rebuilds.

The main parts to the configuration are enabling `pscIde` in the
`purs-loader` configuration, and using webpack's
[DllPlugin](https://github.com/webpack/docs/wiki/list-of-plugins#dllplugin)
to delegate to pre-built external modules.

To get the example up and running, please run the following commands.

```bash
npm install # yarn may also be used for this step

bower install

npm run webpack:dll

npm run webpack:server
```

The example will then be available in browser at [http://localhost:4008/](http://localhost:4008/).
