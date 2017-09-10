port module Storybook.Card exposing (..)

import Data.Entry exposing (Entry)
import Card.Main exposing (viewEntry, Msg)
import Storybook.Utils exposing (storybookApp)


-- APP --


main : Program Entry Entry Msg
main =
    storybookApp
        { view = viewEntry }
