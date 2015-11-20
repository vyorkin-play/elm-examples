module Counter where

import Html exposing (..)
import Html.Events exposing (onClick)

type alias Model = Int
type Action = Increment | Decrement

update : Action -> Model -> Model
update action model =
  case action of
    Increment -> model + 1
    Decrement -> model - 1

view : Signal.Address Action -> Model -> Html
view address model =
  div []
    [ button [ onClick address Decrement ] [ text "-" ]
    , text (toString model)
    , button [ onClick address Increment ] [ text "+" ]
    ]
