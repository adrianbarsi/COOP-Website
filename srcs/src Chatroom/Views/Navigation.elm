module Views.Navigation exposing (navigation)

import Html exposing (..)
import Html.Attributes exposing (..)

navigation : Html msg
navigation =
    let
        urls = ["#home", "#room"]
        names = ["Home", "Room"]
    in
        div []
            (List.map2 navigationLink urls names)

navigationLink : String -> String -> Html msg
navigationLink url name =
    a [ navigationLinkStyle, href url ] [ text name ]

navigationLinkStyle : Attribute msg
navigationLinkStyle =
    style
        [ ("color", "black")
        , ("float", "left")
        , ("padding", "10px")
        , ("textDecoration", "none")
        , ("fontSize", "16px")
        ]