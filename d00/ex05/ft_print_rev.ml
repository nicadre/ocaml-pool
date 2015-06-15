(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_rev.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 10:52:25 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/15 11:01:39 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_rev s =
  if (String.length s) > 0 then
	begin
	  let rec loop size =
		if (size - 1) >= 0 then
		  begin
			print_char (String.get s (size - 1));
			loop (size - 1)
		  end
	  in
	  loop (String.length s);
	end;
  print_char '\n'


let () =
  print_string "test with 'coucou'\n";
  ft_print_rev "coucou";
  print_string "test with ''\n";
  ft_print_rev ""
