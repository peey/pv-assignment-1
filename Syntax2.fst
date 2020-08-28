
module Syntax2

val rec log_int : nat -> Tot nat
let log_int n =
  if n <= 2 then 1 else 1 + log_int (n / 2) 

	let main n = log_int n


