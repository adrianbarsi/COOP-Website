module Update exposing (..)

import Msgs exposing (..)
import Models exposing (..)
import Routing exposing (parseLocation)
import WebSocket

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of      
        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( Model newRoute "" [] Models.Nothing, Cmd.none )
        
        Input newInput ->
        ({ model | input = newInput}, Cmd.none)

        Send ->
        ({ model | input = ""}, WebSocket.send "ws://echo.websocket.org" model.input)

        NewMessage str ->
        ({ model | messages = model.messages ++ [str] }, Cmd.none)

        NewSongReaction songReaction ->
            case songReaction of
                Woot ->    
                    ( { model | songReaction = Woot }, Cmd.none )
                Meh ->
                    ( { model | songReaction = Meh }, Cmd.none )
                Grab ->
                    ( { model | songReaction = Grab}, Cmd.none )
                Models.Nothing ->
                    ( { model | songReaction = Models.Nothing}, Cmd.none )