(* day1/list_distance.ml *)

open Core

let () =
  let path = "/home/mfernandez/ocaml-projects/adventOCaml/day1/input_list.txt" in
  (* read_lines returns string list *)
  In_channel.read_lines path
  |> List.iter ~f:print_endline

