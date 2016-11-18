module Main exposing (..)

import Html
import String


wordCount =
  String.words >> List.length

main =
  wordCount "I have a new cat."
  |> toString
  |> Html.text
