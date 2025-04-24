open Core

let () =
  let path = "day1/input_list.txt" in
  (* 1. Read all the lines into a string list *)
  let lines : string list = In_channel.read_lines path in

  (* 2. Split each line at the first tab into a pair (col1, col2) *)
  let parse line =
    match String.lsplit2 ~on:' ' line with
    | Some (c1, c2) -> (c1, c2)
    | None -> failwith ("Bad line: " ^ line)
  in
  let pairs : (string * string) list =
    List.map lines ~f:parse
  in

  (* 3. “Unzip” that list of pairs into two lists *)
  let col1_list, col2_list = List.unzip pairs in

  (* Optional: if you prefer arrays/vectors instead of lists *)
  (* let col1_arr = Array.of_list col1_list in *)
  (* let col2_arr = Array.of_list col2_list in *)

  (* Now you can work with col1_list (or col1_arr) and col2_list (or col2_arr) *)
  List.iter col1_list ~f:print_endline;
  List.iter col2_list ~f:print_endline;



