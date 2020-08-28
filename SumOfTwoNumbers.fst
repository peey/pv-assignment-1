module SumOfTwoNumbers
open FStar.IO

val add : int -> int -> Tot int
let  add x y =
  x + y

let main =
  let result = (add 2 3) in
  print_string ("Sum is " ^ (string_of_int result))
