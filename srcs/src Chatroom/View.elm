module View exposing (..)

import Models exposing (..)
import Msgs exposing (..)

import Views.Navigation exposing (navigation)
import Views.Home exposing (home)
import Views.Room exposing (room)
import Views.NotFound exposing (notFound)

import Html exposing (..)

view : Model -> Html Msg
view model =
    div []
        [ case model.route of
            Home ->
                home
            Room ->
                room model
            NotFoundRoute ->
                notFound
        , navigation
        ]