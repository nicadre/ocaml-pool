(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 13:21:24 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/22 16:18:19 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let read_file name =
  try let ifs = open_in name in
	  let ary = Array.make 5 "" in
	  begin
		try
		  for i = 0 to 4 do
			ary.(i) <- (input_line ifs)
		  done;
		close_in ifs;
		ary
		with
		| End_of_file-> ary
	  end
  with
  | Sys_error err -> print_endline err; exit 42

let () =
  if Array.length Sys.argv = 2 then
	begin
	  let jokes = read_file (Sys.argv.(1)) in
	  let rand = Random.self_init (); Random.int 5 in
	  print_endline jokes.(rand)
	end
