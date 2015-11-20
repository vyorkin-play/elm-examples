module Hello where

import Html
import String

main =
  "ku"
    |> String.toUpper
    |> String.repeat 3
    |> Html.text
