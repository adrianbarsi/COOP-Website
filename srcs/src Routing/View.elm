module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Models exposing (..)
import Msgs exposing (..)

view : Model -> Html Msg
view model =
    div []
        [ page model 
        , a [ navigationLinkStyle, href "#home" ] [ text "Home" ]
        , a [ navigationLinkStyle, href "#content" ] [ text "Content" ]
        , a [ navigationLinkStyle, href "#other" ] [ text "Other" ]
        ]

page : Model -> Html Msg
page model =
    case model.route of
        Home ->
            div [] [ text "Home" ]
        Content ->
            div [] [ text "Content" ] 
        Other ->
            div [] [ text "Other" ]
        NotFoundRoute ->
            div [] [ text "Not Found" ]

navigationLinkStyle : Attribute msg
navigationLinkStyle =
    style
        [ ("color", "black")
        , ("float", "left")
        , ("padding", "10px")
        , ("textDecoration", "none")
        , ("fontSize", "16px")
        ]