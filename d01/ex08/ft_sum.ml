(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_sum.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 11:29:16 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/16 13:22:46 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_sum f m n =
  if m > n then
	-1.0
  else
	let rec loop i res =
	  if i = n then
		res +. (f i)
	  else
		loop (i + 1) (res +. (f i))
	in
	loop m 0.0

let () =
  print_float (ft_sum (fun i -> float_of_int (i * i)) 1 10);
  print_newline ()
