(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_countdown.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 09:14:06 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/15 09:51:17 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let print_int_endline n =
  print_int n;
  print_char '\n'

let rec ft_countdown x =
  if x <= 0 then
	print_int_endline 0
  else
	begin
	  print_int_endline x;
	  ft_countdown (x - 1)
	end

let () =
  ft_countdown 3;
  print_char '\n';
  ft_countdown 0;
  print_char '\n';
  ft_countdown (-1);
