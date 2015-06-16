(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   iter.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 10:48:31 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/16 10:53:03 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec iter f x n =
  if n < 0 then
	-1
  else if n = 0 then
	x
  else
	iter f (f x) (n - 1)

let () =
  print_int (iter (fun x -> x * x) 2 4);
  print_newline ();
  print_int (iter (fun x -> x * 2) 2 4);
  print_newline ()
