(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_string_all.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 11:03:51 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/15 11:43:35 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_string_all f s =
  let rec loop i =
	if i < (String.length s) then
	  begin
		if (f (String.get s i)) = false then
		  false
		else
		  loop (i + 1)
	  end
	else
	  true
  in
  loop 0

let is_digit c =
  c >= '0' && c <= '9'

let () =
  begin
	print_string "'' is digit? ";
	if (ft_string_all is_digit "") = true then
	  print_endline "true"
	else
	  print_endline "false"
  end;
  begin
	print_string "'0123456789' is digit? ";
	if (ft_string_all is_digit "0123456789") = true then
	  print_endline "true"
	else
	  print_endline "false"
  end;
  begin
	print_string "'01234567d89' is digit? ";
	if (ft_string_all is_digit "01234567d89") = true then
	  print_endline "true"
	else
	  print_endline "false"
  end;
  begin
	print_string "'coucou' is digit? ";
	if (ft_string_all is_digit "coucou") = true then
	  print_endline "true"
	else
	  print_endline "false"
  end
