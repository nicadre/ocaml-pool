(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/19 09:26:37 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/19 09:30:26 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
  let list = Color.all in
  let rec loop = function
	| []			-> print_newline ()
	| [x]			-> print_endline (Color.toString x)
	| head::tail	-> print_endline (Color.toString head); loop tail
  in
  let rec loop2 = function
	| []			-> print_newline ()
	| [x]			-> print_endline (Color.toStringVerbose x)
	| head::tail	-> print_endline (Color.toStringVerbose head); loop2 tail
  in
  loop list;
  loop2 list

