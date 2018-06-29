module Update exposing (..)

import Msgs exposing (..)
import Models exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        AddAnswer selection ->
            case selection of
                A ->
                    ( {model | answers = model.answers ++ ["A"]}, Cmd.none )
                B ->
                    ( {model | answers = model.answers ++ ["B"]}, Cmd.none )
                C ->
                    ( {model | answers = model.answers ++ ["C"]}, Cmd.none )
                D ->
                    ( {model | answers = model.answers ++ ["D"]}, Cmd.none )
            
            
