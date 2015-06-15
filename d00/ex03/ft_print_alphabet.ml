(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_alphabet.ml                               :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 10:20:01 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/15 10:29:28 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_alphabet () =
  let ascii_of_a = int_of_char 'a' in
  let ascii_of_z = int_of_char 'z' in
  let rec loop x =
	if x <= ascii_of_z then
	  begin
		print_char (char_of_int x);
		loop (x + 1)
	  end
  in
  loop ascii_of_a;
  print_char '\n'

let () =
  ft_print_alphabet ()
