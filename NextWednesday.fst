module Ex01a



type day =
  | Monday
  | Tuesday
  | Wednesday
  | Thursday
  | Friday
  | Saturday
  | Sunday

val next_weekday : day -> Tot day
let next_weekday d =
  match d with
  | Monday    -> Tuesday
  | Tuesday   -> Wednesday
  | Wednesday -> Thursday
  | Thursday  -> Friday
  | Friday    -> Monday
  | Saturday  -> Monday
  | Sunday    -> Monday

val test_next_weekday : unit -> Lemma
      (ensures ((next_weekday (next_weekday Saturday)) = Tuesday))
let test_next_weekday () = ()

val next_wednesday : day -> Tot int
let rec next_wednesday d =
    match d with
    | Wednesday -> 0
    | _  -> 1 + next_wednesday (next_weekday d)


    
  
let main = print_any (next_wednesday (Saturday))
