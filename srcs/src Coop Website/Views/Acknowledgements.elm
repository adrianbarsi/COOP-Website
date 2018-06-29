module Views.Acknowledgements exposing (acknowledgementsView)

import Html exposing (..)

acknowledgementsView : Html msg
acknowledgementsView =
    div []
    [ h3 [ ] [ text "Acknowledgements" ]
    , p [] [ text "..." ]
    ]