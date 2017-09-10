module Card.Main exposing (Model, Msg, initModel, view, viewEntry, update)

import Data.Entry exposing (Entry, EntryLocation)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


type alias Model =
    { entry : Entry }


initModel : Model
initModel =
    { entry = initEntry }


initEntry : Entry
initEntry =
    { content = ""
    , translation = ""
    , type_ = "entry"
    , id = "1"
    , rev = "1"
    }


initLocation : EntryLocation
initLocation =
    { longitude = 0.0
    , latitude = 0.0
    , accuracy = 0
    }


type Msg
    = NoOp
    | DeleteEntry String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []

        DeleteEntry id ->
            model ! []


view : Model -> Html Msg
view model =
    viewEntry model.entry


viewEntry : Entry -> Html Msg
viewEntry entry =
    div
        [ class "dw-panel sans-serif" ]
        [ div
            [ class "dw-panel__content bg-dark-blue mw5 center br4 pa4 shadow-card" ]
            [ a [ onClick <| DeleteEntry entry.id, class "close handwriting black-70 hover-white" ] [ text "×" ]
            , div [ class "white tl" ]
                [ h2
                    [ class "mt0 mb2 f5 f4-ns fw6 overflow-hidden" ]
                    [ text entry.content ]
                , h2
                    [ class "mt0 f5 f4-ns fw6 overflow-hidden" ]
                    [ text entry.translation ]
                ]
            , hr
                [ class "w-100 mt4 mb3 bb bw1 b--black-10" ]
                []

            -- , div [ class "white f6 f5-ns" ]
            -- [ span [ class "db mb2 tr truncate" ] [ text <| viewDate entry.addedAt ]
            -- , span [ class "db mb1 tr truncate" ] [ text <| toString entry.location.latitude ++ ", " ]
            -- , span [ class "db tr truncate" ] [ text <| toString entry.location.longitude ]
            -- ]
            ]
        ]
