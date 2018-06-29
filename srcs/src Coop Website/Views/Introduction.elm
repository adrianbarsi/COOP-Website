module Views.Introduction exposing (introductionView)

import Html exposing (..)

introductionView : Html msg
introductionView =
    div []
    [ h3 [ ] [ text "Introduction" ]
    , p [] [ text "..." ]
    ]