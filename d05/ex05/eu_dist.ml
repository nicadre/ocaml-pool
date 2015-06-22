(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   eu_dist.ml                                         :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 16:32:54 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/22 17:01:40 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let eu_dist a b =
  if Array.length a = Array.length b then
	let n = Array.length a in
	let res = ref 0. in
	for i = 0 to n - 1 do
	  res := (!res +. ((a.(i) -. b.(i)) ** 2.))
	done;
	sqrt !res
  else
	failwith "Array have different length"

let () =
  try
	let a = Array.make 5 2.2 in
	let b = Array.make 5 3.7 in
	let c = Array.make 1 (-1.) in
	let d = Array.make 1 5. in
	let e = Array.make 6 18.7 in
	print_float (eu_dist a b) ; print_char '\n' ;
	a.(0) <- 0. ; b.(4) <- (-5.2) ;
	print_float (eu_dist a b) ; print_char '\n' ;
	print_float (eu_dist c d) ; print_char '\n' ;
	print_float (eu_dist e a) ; print_char '\n'
  with
  | Failure err -> print_endline err
