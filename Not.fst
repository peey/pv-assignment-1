module Not

open FStar.IO

// because "not" already exists
val our_not : bool -> bool

let our_not x =
  if x then false else true

val test_not1 :  x:bool{x = true} -> Lemma (our_not x = false) // it should be not x = false, shouldn't it be? fix it
let test_not1 x = () // we don't have to help F*, it is able to follow the if/else conditions to verify, so "proof" of the lemma we write is empty

val test_not2 :  x:bool{x = false} -> Lemma (our_not x = true)
let test_not2 x = ()

(*
 The real value of program verification is in the fact that our implementor can make a mistake,
 but wrong implementation will fail to verify. Go back and change the our_not definition to say:

    if x then true else false

 And try verifying the conditions again
*)

let main =
  print_string "You!"
