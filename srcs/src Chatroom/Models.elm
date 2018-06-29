module Models exposing (..)

type Route
    = Home
    | Room
    | NotFoundRoute

type SongReaction
    = Woot
    | Meh
    | Grab
    | Nothing

type alias Model =
    { route : Route
    , input : String
    , messages : List String
    , songReaction : SongReaction
    }

initialModel : Route -> Model
initialModel route =
    Model route "" [] Nothing