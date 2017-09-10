module Data.Entry exposing (..)

import Date exposing (Date)


type alias Entry =
    { addedAt : Date
    , content : String
    , location : EntryLocation
    , translation : String
    , type_ : String
    , id : String
    , rev : String
    }


type alias EntryLocation =
    { latitude : Float
    , longitude : Float
    , accuracy : Float
    }
