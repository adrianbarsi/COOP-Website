module Views.Goals exposing (goalsView)

import Html exposing (..)

goalsView : Html msg
goalsView =
    div []
    [ h3 [ ] [ text "Goals" ]
    , p [] [ text "..." ]
    ]