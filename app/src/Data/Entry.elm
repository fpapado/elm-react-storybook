module Data.Entry exposing (..)

-- import Date exposing (Date)


type alias Entry =
    -- { addedAt : Date
    -- , location : EntryLocation
    { content : String
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
