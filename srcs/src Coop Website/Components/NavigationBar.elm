module Components.NavigationBar exposing (navigationBar)

import Html exposing (..)
import Html.Attributes exposing (..)
import DynamicStyle exposing (..)
import Msgs exposing (..)

navigationBar : List String -> List String -> Html Msg
navigationBar pageNames pagePaths =
    div [ navigationListStyle ]
        (List.map2 navigationLink pageNames pagePaths)

navigationLink : String -> String -> Html Msg
navigationLink pageName pagePath =
    a ( href pagePath :: navigationLinkStyle :: (hover [("backgroundColor", "black", "#333333")]) ) [ text pageName ]

navigationListStyle : Attribute msg
navigationListStyle =
    style
        [ ("backgroundColor", "black")
        , ("overflow", "hidden")    
        ]

navigationLinkStyle : Attribute msg
navigationLinkStyle =
    style
        [ ("float", "left")
        , ("color", "white")
        , ("padding", "14px")
        , ("textDecoration", "none")
        , ("backgroundColor", "black")
        , ("fontSize", "16px")
        , ("focusOutline", "none")
        ]
