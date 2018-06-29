module Views.EmployerInformation exposing (employerInformationView)

import Html exposing (..)

employerInformationView : Html msg
employerInformationView =
    div []
    [ h3 [ ] [ text "Employer Description" ]
    , p [] [ text "..." ]
    ]