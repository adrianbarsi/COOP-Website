module Components.EmbeddedVideo exposing (embeddedVideo)

import Html exposing (..)
import Html.Attributes exposing (..)
import Json.Encode

embeddedVideo : String -> Html msg
embeddedVideo url =
    iframe
        [ embeddedVideoStyle
        , src url
        , property "frameborder" (Json.Encode.string "0")
        , property "allowfullscreen" (Json.Encode.string "true")
        ]
        []

embeddedVideoStyle : Attribute msg
embeddedVideoStyle =
    style
        [ ("position", "absolute")
        , ("width", "560px")
        , ("height", "315px")
        , ("left", "350px")
        , ("top", "20px")
        ]