(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 10:33:48 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/15 10:49:33 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb () =
  let rec first_loop first_int =
	if first_int <= 9 then
	  begin
		let rec second_loop second_int =
		  if second_int <= 9 then
			begin
			  let rec third_loop third_int =
				if third_int <= 9 then
				  begin
					print_int first_int;
					print_int second_int;
					print_int third_int;
					if first_int <> 7 then
					  print_string ", ";
					third_loop (third_int + 1)
				  end
			  in
			  third_loop (second_int + 1);
			  second_loop (second_int + 1)
			end
		in
		second_loop (first_int + 1);
		first_loop (first_int + 1)
	  end
  in
  first_loop 0;
  print_string "\n"


let () =
  ft_print_comb ()
