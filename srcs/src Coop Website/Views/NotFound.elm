module Views.NotFound exposing (notFoundView)

import Html exposing (..)

notFoundView : Html msg
notFoundView =
    div []
        [ text "Not Found"]