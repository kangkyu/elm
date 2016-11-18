module Main exposing (..)

import Html


cart =
  [ { name = "Lemon", qty = 1, freeQty = 0 }
  , { name = "Apple", qty = 5, freeQty = 0 }
  , { name = "Pear", qty = 10, freeQty = 0 }
  ]


freeCount count freeCount item =
  if item.qty >= count then
    { item | freeQty = freeCount }
  else
    item


main =
  List.map ((freeCount 5 1) >> (freeCount 10 3)) cart
  |> toString
  |> Html.text
