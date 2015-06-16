(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   fibonacci.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 10:12:51 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/16 10:40:18 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let fibonacci n =
  if n < 0 then
	-1
  else if n < 2 then
	n
  else
	let rec loop i n1 n2 =
	  if i < n then
		loop (i + 1) (n1 + n2) (n1)
	  else
		n1 + n2
	in
	loop 2 1 0

let () =
  print_int (fibonacci (-42));
  print_newline ();
  print_int (fibonacci 1);
  print_newline ();
  print_int (fibonacci 3);
  print_newline ();
  print_int (fibonacci 6);
  print_newline ()
