
module Syntax1

val checktotal : nat -> Tot bool
let checktotal a b c =
  if a + b + c = 0  then true else false
  
  let main p q r = checktotal p q r


