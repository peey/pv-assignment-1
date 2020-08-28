module AreaOfCircle

open FStar.IO
open FStar.Mul // for the * operation. Usually * is reserved for cartesian product instead of multiplication

val area_of_circle : int -> Tot int
let area_of_circle r =
  let pi = 3 in // just because we want to work with only integers for now
  pi * r * r

let main =
  let result = area_of_circle 10 in
  print_string (string_of_int result)
