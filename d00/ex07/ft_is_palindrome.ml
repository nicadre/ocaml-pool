(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_is_palindrome.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 11:45:46 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/15 13:22:48 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_is_palindrome s =
  let size = (String.length s) - 1 in
  let rec loop i =
	if i < (String.length s) then
	  begin
		if (String.get s i) <> (String.get s (size - i)) then
		  false
		else
		  loop (i + 1)
	  end
	else
	  true
  in
  loop 0

let () =
  begin
	print_string "'' is palindrome? ";
	if (ft_is_palindrome "") = true
	then print_endline "true"
	else print_endline "false"
  end;
  begin
	print_string "'oui' is palindrome? ";
	if (ft_is_palindrome "oui") = true
	then print_endline "true"
	else print_endline "false"
  end;
  begin
	print_string "'non' is palindrome? ";
	if (ft_is_palindrome "non") = true
	then print_endline "true"
	else print_endline "false"
  end
