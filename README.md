# Elm-react-storybook
An example of using Elm with react-storybook.

This was inspired by https://github.com/kalutheo/elm-calendar-react-storybook, specifically the technique of using programWithFlags combined with a wrapper for elm in react.

I do not use `create-elm-app`, thus this one has more barebones webpack configurations.
Moreover, this is using storybook v3.

I also wish to create a storybook purely in elm, instead of going through react, but I need to understand how it works first!

## Running
```shell
yarn global add elm
cd app
elm-package install
yarn
yarn run start-elm
yarn run storybook
```
