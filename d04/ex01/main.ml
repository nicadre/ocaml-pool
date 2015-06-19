(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/19 10:04:53 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/19 12:06:55 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
  let list = Value.all in
  let rec loop1 = function
	| []	-> print_newline ()
	| [x]	-> print_endline (Value.toString x)
	| h::t	-> print_endline (Value.toString h) ; loop1 t
  in
  let rec loop2 = function
	| []	-> print_newline ()
	| [x]	-> print_endline (Value.toStringVerbose x)
	| h::t	-> print_endline (Value.toStringVerbose h) ; loop2 t
  in
  loop1 list;
  loop2 list;
  print_endline (Value.toStringVerbose (Value.previous Value.As));
  (* print_endline (Value.toStringVerbose (Value.previous Value.T2)); *)
  print_endline (Value.toStringVerbose (Value.next Value.T2))
  (* print_endline (Value.toStringVerbose (Value.next Value.As)) *)
