module Components.SongReactionOptions exposing (songReactionOptions)

import Html exposing (..)
import Html.Events exposing (..)

import Msgs exposing (..)
import Models exposing (..)

songReactionOptions : Html Msg
songReactionOptions =
    div []
        [ button [ onClick (NewSongReaction Woot) ] [ text "Woot" ]
        , button [ onClick (NewSongReaction Meh) ] [ text "Meh" ]
        , button [ onClick (NewSongReaction Grab) ] [ text "Grab" ]
        ]