(* This is the main of otodo *)
(* Oreilly book has a model of a db *)

(*
type data_card = string array ;;
type data_base = {card_index : string -> int; data : data_card list } ;;
*)

open Getopt
open Printf

let list() = Printf.printf "Listing!\n"; flush stdout

let add      = ref ""
and complete = ref 0
and delete   = ref 0
and edit     = ref []

(************)
(* add "This is the task"    *)
(* complete <id>*)
(* delete <id> *)
(* edit <id> "This is the replacement task text"   *)
(* list *)
(************)

let specs =
[
  ( 'a', "add", None, Some (fun x -> Printf.printf "execute %s\n" x));
  ( 'c', "complete", (incr complete), None);
  ( 'd', "delete", (incr delete), None);
  ( 'e', "edit", None, (append edit));
  ( 'l', "list", Some list, None);
]

let _ =
  parse_cmdline specs print_endline;

  Printf.printf "delete    = %i\n" !delete;
  Printf.printf "edit      = %i\n" !complete;
  Printf.printf "add       = %s\n" !add;
  List.iter (fun x -> Printf.printf " %s\n" x) !edit;
