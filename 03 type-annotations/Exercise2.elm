module Main exposing (..)

import Html


type alias Item =
  { name : String, freeQty : Int, qty : Int }


cart : List Item
cart =
  [ { name = "Lemon", qty = 1, freeQty = 0 }
  , { name = "Apple", qty = 5, freeQty = 0 }
  , { name = "Pear", qty = 10, freeQty = 0 }
  ]


freeCount : Int -> Int -> Item -> Item
freeCount count freeCount item =
  if item.qty >= count then
    { item | freeQty = freeCount }
  else
    item


main : Html.Html msg
main =
  List.map ((freeCount 5 1) >> (freeCount 10 3)) cart
  |> toString
  |> Html.text
