(* This is the main of otodo *)
(* Oreilly book has a model of a db *)
(* How do I use modules like Arg? *)

type data_card = string array ;;
type data_base = {card_index : string -> int; data : data_card list } ;;

print_string "Hello from otodo\n";
for i = 1 to Array.length Sys.argv - 1
do print_string Sys.argv.(i); print_char ' ' done;
print_newline();;
