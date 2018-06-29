module Views.Conclusion exposing (conclusionView)

import Html exposing (..)

conclusionView : Html msg
conclusionView =
    div []
    [ h3 [ ] [ text "Conclusion" ]
    , p [] [ text "..." ]
    ]