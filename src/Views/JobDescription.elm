module Views.JobDescription exposing (jobDescriptionView)

import Html exposing (..)

jobDescriptionView : Html msg
jobDescriptionView =
    div []
    [ h3 [ ] [ text "Job Description" ]
    , p [] [ text "..." ]
    ]