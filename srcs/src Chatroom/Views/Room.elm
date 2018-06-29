module Views.Room exposing (room)

import Models exposing (..)
import Msgs exposing (..)
import Components.ChatBox exposing (chatBox)
import Components.EmbeddedVideo exposing (embeddedVideo)
import Components.SongReactionOptions exposing (songReactionOptions)

import Html exposing (..)

room : Model -> Html Msg
room model =
    div []
        [ h3 [] [ text "Room" ]
        , embeddedVideo "https://www.youtube.com/embed/watch?v=7bkk1ibiPRw"
        , songReactionOptions
        , chatBox model
        ]