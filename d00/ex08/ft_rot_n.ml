(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_rot_n.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 13:26:08 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/15 15:29:22 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_rot_n i s =
  let ft_rot c =
	let n = i mod 26 in
	let ascii_of_a = int_of_char 'a' in
	let ascii_of_A = int_of_char 'A' in
	let ascii_of_c = int_of_char c in
	if c >= 'a' && c <= 'z' then
	  char_of_int (ascii_of_a + (((ascii_of_c - ascii_of_a) + n) mod 26))
	else if c >= 'A' && c <= 'Z' then
	  char_of_int (ascii_of_A +  (((ascii_of_c - ascii_of_A) + n) mod 26))
	else
	  c
  in
  String.map ft_rot s

let () =
  print_endline (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
  print_endline (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
  print_endline (ft_rot_n 42 "0123456789");
  print_endline (ft_rot_n 2 "OI2EAS67B9");
  print_endline (ft_rot_n 0 "Damned !");
  print_endline (ft_rot_n 42 "");
  print_endline (ft_rot_n 1 "NBzlk qnbjr !")
