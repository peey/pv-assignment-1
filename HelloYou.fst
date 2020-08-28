module HelloYou
open FStar.IO

val say_hello : string -> string
let say_hello name =
  "Hello " ^ name

let main =
  print_string (say_hello "You!")
