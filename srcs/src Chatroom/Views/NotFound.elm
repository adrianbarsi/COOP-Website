module Views.NotFound exposing (notFound)

import Html exposing (..)

notFound : Html msg
notFound =
    div [] [ text "Not Found" ]