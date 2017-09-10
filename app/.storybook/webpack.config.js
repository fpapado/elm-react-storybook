const path = require('path');

module.exports = {
  module: {
    rules: [
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: {
          loader: 'elm-webpack-loader',
          options: {}
        }
      },
      {
        test: /\.css/,
        loaders: [ "style-loader", 'css-loader' ],
        include: path.resolve(__dirname, '../')
      }
    ]
  }
}
