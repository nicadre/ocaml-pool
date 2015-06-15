(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_test_sign.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 09:04:13 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/15 09:12:48 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_test_sign n =
  if n < 0 then
	print_endline "negative"
  else
	print_endline "positive"

let () =
  print_string "Test with [42] : ";
  ft_test_sign 42;
  print_string "Test with [0] : ";
  ft_test_sign 0;
  print_string "Test with [-42] : ";
  ft_test_sign (-42)
