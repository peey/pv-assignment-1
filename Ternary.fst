module Ternary
open FStar.IO

type ternary =
  | T_True
  | T_False
  | T_Unknown

val ternary_to_string : ternary -> Tot string

let ternary_to_string t =
  match t with
  | T_True -> "true"
  | T_False -> "false"
  | T_Unknown -> "?"

val t_or : ternary -> ternary -> Tot ternary
let t_or t1 t2 =
  match t1 with
  | T_True -> T_True
  | T_False -> t2
  | T_Unknown -> t2

val test_orb1 : unit -> Lemma
      (ensures ((t_or T_False T_Unknown) = T_Unknown))
let test_orb1 () = ()

val test_orb2 : unit -> Lemma
      (ensures ((t_or T_Unknown T_True) = T_True))
let test_orb2 () = ()

let main =
  print_string (ternary_to_string (t_or T_False T_Unknown))
