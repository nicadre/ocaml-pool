(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_power.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 09:52:27 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/15 15:33:00 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_power n p =
  if n = 0 && p > 0 then
	0
  else if n > 0 && p = 0 then
	1
  else if (n = 0 && p = 0) || n < 0 || p < 0 then
	(-1)
  else
	let rec loop pow =
	  if pow = 0 then
		n
	  else
		n * loop (pow - 1)
	in
	loop (p - 1)

let () =
  print_string "ft_power 2 8 = ";
  print_int (ft_power 2 8);
  print_char '\n';
  print_string "ft_power 2 0 = ";
  print_int (ft_power 2 0);
  print_char '\n';
  print_string "ft_power 0 8 = ";
  print_int (ft_power 0 8);
  print_char '\n';
  print_string "ft_power 10 6 = ";
  print_int (ft_power 10 6);
  print_char '\n';
  print_string "ft_power 0 0 = ";
  print_int (ft_power 0 0);
  print_char '\n';
  print_string "ft_power 2 -1 = ";
  print_int (ft_power 2 (-1));
  print_char '\n';
  print_string "ft_power -1 2 = ";
  print_int (ft_power (-1) 2);
  print_char '\n';
