module View exposing (view)

import Html exposing (..)
import Models exposing (..)
import Msgs exposing (..)
import Routing exposing (pageNames, pagePaths)

import Components.NavigationBar exposing (navigationBar)

import Views.Introduction exposing (introductionView)
import Views.EmployerInformation exposing (employerInformationView)
import Views.Goals exposing (goalsView)
import Views.JobDescription exposing (jobDescriptionView)
import Views.Conclusion exposing (conclusionView)
import Views.Acknowledgements exposing (acknowledgementsView)
import Views.NotFound exposing (notFoundView)


view : Model -> Html Msg
view model =
    div []
        [ page model ]

page : Model -> Html Msg
page model =
    div []
    [ navigationBar pageNames pagePaths
    , case model.route of
        Introduction ->
            introductionView
        EmployerInformation ->
            employerInformationView
        Goals ->
            goalsView
        JobDescription ->
            jobDescriptionView
        Conclusion ->
            conclusionView
        Acknowledgements ->
            acknowledgementsView
        NotFoundRoute ->
            notFoundView
    ]