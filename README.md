# Elm-react-storybook
An example of using Elm with [`react-storybook`](https://github.com/storybooks/storybook/tree/master/app/react).

This was inspired by [https://github.com/kalutheo/elm-calendar-react-storybook](https://github.com/kalutheo/elm-calendar-react-storybook), specifically the technique of using `programWithFlags` combined with a wrapper for Elm in React.

I do not use `create-elm-app`, thus this one has a more basic main app, focusing on getting storybook to work.
Moreover, this is using storybook v3.

Finally, I wish to create a storybook purely in elm, instead of going through react, but I need to understand how it works first :)

## Running Storybook
```shell
yarn global add @storybook/cli
yarn global add elm
cd app
elm-package install
yarn
yarn run storybook
```

## How?
- A separate App is created, that imports each view, under `Storybook/SomeView.elm`
- We use [`programWithFlags`](http://package.elm-lang.org/packages/elm-lang/html/2.0.0/Html#programWithFlags) so that we can inject data (i.e. view function arguments) from Javascript to these Elm Apps
- We import these Elm Apps into ReactStoryBook thanks to the [elm-webpack-loader](https://github.com/elm-community/elm-webpack-loader)
- These Elm Apps are then wrapped into React thanks to a small wrapper (see : [src/stories/Elm.js](https://github.com/fpapado/elm-react-storybook/blob/master/app/stories/Elm.js))

## Pros / Cons of this approach
This approach has the benefit of potentially leveraging the storybook ecosystem and using existing tools.

The downsides imo, compared to a version in Elm, are as follows:
  - Separate / opaque webpack configurations when running alongside existing app
    - This would probably also be an issue with an Elm version, but the extra config would be simpler
  - Reliance on ports encoding / decoding.
    - For simple values, this is cool, because you don't need to define anything
    - If one of your views takes a "complex" value that ports cannot translate automatically, then you have to decode Json.Value. You might not have this logic in your application, thus serialising most of the types seems like a hassle.
  - Slower feedback loop
    - Updates are slower with all this indirection
  - Type checking?
    - If you encode/decode at the boundary, you can catch these at runtime, but not while writing your stories.

## License

MIT © Fotis Papadogeorgopoulos
