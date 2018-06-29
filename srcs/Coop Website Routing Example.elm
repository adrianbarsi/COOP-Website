import Html exposing (..)
import Html.Attributes exposing (class, href)

import Navigation exposing (Location)
import UrlParser exposing (..)


-- MAIN


main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


-- TYPE DEFINITIONS


type Route
    = Introduction
    | EmployerInformation
    | Goals
    | JobDescription
    | Conclusion
    | Acknowledgements
    | NotFoundRoute

type Msg
    = OnLocationChange Location

-- MODEL


type alias Model =
    { route : Route
    }

initialModel : Route -> Model
initialModel route =
    Model route


-- ROUTING


matchers : Parser (Route -> a) a
matchers =
    -- Access using #
    oneOf
        [ UrlParser.map Introduction top
        , UrlParser.map Introduction (UrlParser.s "introduction")
        , UrlParser.map EmployerInformation (UrlParser.s "employer-information")
        , UrlParser.map Goals (UrlParser.s "goals")
        , UrlParser.map JobDescription (UrlParser.s "job-description")
        , UrlParser.map Conclusion (UrlParser.s "conclusion")
        , UrlParser.map Acknowledgements (UrlParser.s "acknowledgements")
        ]

parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFoundRoute

introductionPath : String
introductionPath =
    "#introduction"

employerInformationPath : String
employerInformationPath =
    "#employer-information"

goalsPath : String
goalsPath =
    "#goals"

jobDescriptionPath : String
jobDescriptionPath =
    "#job-description"

conclusionPath : String
conclusionPath =
    "#conclusion"

acknowledgementsPath : String
acknowledgementsPath =
    "#acknowledgements"

navigateButton : String -> String -> Html Msg
navigateButton pagePath name =
    a   [ class "btn regular"
        , href pagePath
        ]
        [ text name ]


-- INIT


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            parseLocation location
    in
        ( initialModel currentRoute, Cmd.none )


--UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of      
        OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )


-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ page model
        , navigateButton introductionPath  "Introduction"
        , navigateButton employerInformationPath "Employer Information"
        , navigateButton goalsPath "Goals"
        , navigateButton jobDescriptionPath "Job Description"
        , navigateButton conclusionPath "Conclusion"
        , navigateButton acknowledgementsPath "Acknowledgements"
        ]


page : Model -> Html Msg
page model =
    case model.route of
        Introduction ->
            div [] [ text "Introduction"]
        EmployerInformation ->
            div [] [ text "Employer Information"]
        Goals ->
            div [] [ text "Goals"]
        JobDescription ->
            div [] [ text "Job Description"]
        Conclusion ->
            div [] [ text "Conclusion"]
        Acknowledgements ->
            div [] [ text "Acknowledgements"]
        NotFoundRoute ->
            div [] [ text "Not Found" ]


-- SUBSCRIPTION


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none 