module Msgs exposing (..)

import Navigation exposing (Location)
import Models exposing (SongReaction)

type Msg
    = OnLocationChange Location
    | Input String
    | Send
    | NewMessage String
    | NewSongReaction SongReaction