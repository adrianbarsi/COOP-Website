module View exposing (..)

import Html exposing (..)
import Msgs exposing (..)
import Models exposing (..)
-- import Html.Events exposing (..)
import Html.Attributes exposing (type_)

view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text (toString model.answers) ]
        , fieldset []
            [ checkbox "A1"
            , checkbox "A2"
            , checkbox "A3"
            , checkbox "A4"
            , button [ onClick  ]
            ]       
        ]

checkbox : String -> Html Msg
checkbox name =
    label []
        [ input [ Html.Attributes.type_ "checkbox" ] []
        , text name
        ]