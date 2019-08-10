'use strict';

exports.isServerSide = typeof document === 'undefined';

exports.hot = function() {
  if (module.hot) {
    module.hot.accept();
  }
}
