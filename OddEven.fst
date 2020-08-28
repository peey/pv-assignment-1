module OddEven

open FStar.Mul

val isEven: x:int -> Tot bool
let isEven x =
  if x % 2 = 0 then true else false

val isOdd: x:int -> Tot bool
let isOdd x =
  not (isEven x)

val mySum: x:int -> y:int -> Tot int
let mySum x y =
  x + y

(* NOTE: We use Lemma as a shorthand for GTot (u:unit), but here in our proof the return type is not unit, so we use GTot (u:bool). *)
val evenSum: x:int{isEven x} -> y:int{isEven y} -> GTot (u:bool{(isEven (mySum x y))})

(*

You haven't learnt much about the proof mechanics yet. So right now, the proofs you're asked to do are the kind you can easily do by imitation. Don't worry if you don't understand it. The main point of this exercise is to get you familiar with lemma writing which includes multiple functions.

For now, you can think of the following proof as this:

F* tries to do most of the work itself, but it helps when we tell it "try using this". So for this proof we're saying "well try cheking isEven (mySum x y) directly" and it does, and it's able conclude "yeah that was true, great, didn't have to do much work"

*)
// the proof:
let evenSum x y = isEven (mySum x y)

