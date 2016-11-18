module Exercise2 exposing (..)

import Html
import String


uppercase maxLength name =
  if String.length name > maxLength then
    String.toUpper name
  else
    name

main =
  let
    name = "fo foo"
    length = String.length name
  in
    (uppercase 10 name)
      ++ " - name length: "
      ++ (toString length)
      |> Html.text
