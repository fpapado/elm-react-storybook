module Main exposing (..)

import Html
import Card.Main exposing (Model, Msg, view, update, initModel)


main : Program Never Model Msg
main =
    Html.program
        { init = ( initModel, Cmd.none )
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
