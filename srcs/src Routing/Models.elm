module Models exposing (..)

type Route
    = Home
    | Other
    | Content
    | NotFoundRoute

type alias Model =
    { route : Route
    }


initialModel : Route -> Model
initialModel route =
    Model route