module Models exposing (..)

import Array exposing (..)

type Selection = A | B | C | D

type alias Model =
    { answers : Array String
    , currentQuestion : Int
    }

initialModel : Model
initialModel =
    Model Array.empty 0
