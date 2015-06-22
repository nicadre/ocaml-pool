(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   examples_of_file.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 20:20:02 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/22 22:25:18 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let create_duple f s = f, s

let append_duple l d = l @ [d]

let remove_last l =
  let rl = List.rev l in
  match rl with
  | _::t -> List.rev t
  | [] -> []

let get_float l =
  let flist = (remove_last l) in
  List.map float_of_string flist

let examples_of_file path =
  let ifs = try open_in path with
			| Sys_error err	-> print_endline err; exit (-1)
  in
  let quit_loop = ref false in
  let res = ref [] in
  while not !quit_loop do
	let line = try input_line ifs with
			   | End_of_file -> quit_loop := true; ""
	in
	if String.length line > 0 then
	  begin
		let list = Str.split (Str.regexp ",") line in
		let fary = Array.of_list (get_float list) in
		let s = List.nth list ((List.length list) - 1) in
		res := (append_duple !res (create_duple fary s))
	  end
  done;
  close_in ifs;
  !res

let print_duple = function
  | (a, s) -> Array.iter (fun a -> print_float a; print_char ' ') a; print_string s; print_newline ()

let print_list l =
  List.iter print_duple l

let () =
  print_list (examples_of_file "ionosphere.test.csv")
