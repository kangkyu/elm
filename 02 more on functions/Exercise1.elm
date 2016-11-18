module Main exposing (..)

import Html
import String


(~=) a b =
  let
    aFirst = String.slice 0 1 a
    bFirst = String.slice 0 1 b
  in
    aFirst == bFirst


main =
  Html.text (toString ("John" ~= "Jim"))
