module Main exposing (..)

import Models exposing (Model, initialModel)
import Update exposing (update)
import View exposing (view)
import Msgs exposing (..)
import Routing exposing (parseLocation)

import Navigation exposing (Location)
import WebSocket

init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            parseLocation location
    in
        ( initialModel currentRoute, Cmd.none )

subscriptions : Model -> Sub Msg
subscriptions model =
    WebSocket.listen "ws://echo.websocket.org" NewMessage

main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }