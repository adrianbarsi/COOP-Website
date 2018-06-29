module Components.ChatBox exposing (chatBox)

import Models exposing (..)
import Msgs exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)

-- TODO define variables for positions instead of magic constants
-- Or just use relative instead of absolute positioning

type User
    = Adrian
    | Bob
    | Jack

chatBox : Model -> Html Msg
chatBox model =
    div [] 
        [ textarea [ disabled True, textareaStyle ] ( List.map (messageDisplay Adrian) model.messages )
        , input [ onInput Input, value model.input, inputStyle, placeholder "Click here to join the conversation" ] []
        , button [ onClick Send, sendStyle ] [ text "Submit" ] 
        ]

-- Should be changed to union type eventually

messageDisplay : User -> String -> Html msg
messageDisplay user str =
    let
        descriptor =
            case user of
                Adrian ->
                    "Adrian: "
                Bob ->
                    "Bob: "
                Jack ->
                    "Jack: "
    in
        text ( descriptor ++ "\n" ++ str ++ "\n" )

textareaStyle : Attribute msg
textareaStyle =
    style
        [ ("right", "3px")
        , ("bottom", "24px")
        , ("width", "294px")
        , ("height", "608px")
        , ("outline", "solid black")
        , ("background-color", "white")
        , ("resize", "none")
        , ("position", "absolute")
        ]

bottomRightProperties : List (String, String)
bottomRightProperties =
    [ ("right", "0")
    , ("bottom", "0")
    , ("position", "absolute")
    ]

inputStyle : Attribute msg
inputStyle =
    style (
        [ ("type", "text")
        , ("width", "300px")
        ]
        ++ bottomRightProperties
    )

sendStyle : Attribute msg
sendStyle =
    style (
        [ ("color", "white")
        , ("backgroundColor", "black")
        ]
        ++ bottomRightProperties
    )