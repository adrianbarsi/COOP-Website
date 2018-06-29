module Models exposing (..)

type Route
    = Introduction
    | EmployerInformation
    | Goals
    | JobDescription
    | Conclusion
    | Acknowledgements
    | NotFoundRoute

type alias Model =
    { route : Route
    }


initialModel : Route -> Model
initialModel route =
    Model route