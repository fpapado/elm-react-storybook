module Main exposing (..)

import Card.Main exposing (Model, Msg, view, update, initModel)


main : Program Never Model Msg
main =
    App.beginnerProgram
        { model = initModel
        , view = view
        , update = update
        }
