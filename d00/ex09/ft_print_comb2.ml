(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb2.ml                                  :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/15 13:47:46 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/15 14:36:53 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb2 () =
  let rec first_loop first_int =
	if first_int <= 9 then
	  begin
		let rec second_loop second_int =
		  if second_int <= 9 then
			begin
			  let rec third_loop third_int =
				if  third_int <= 9 then
				  begin
					let rec fourth_loop fourth_int =
					  if fourth_int <= 9 then
						begin
						  if first_int > 0 || second_int > 0 || third_int > 0 || fourth_int > 1 then
							begin
							  print_char ',';
							  print_char ' '
							end;
						  print_int first_int;
						  print_int second_int;
						  print_char ' ';
						  print_int third_int;
						  print_int fourth_int;
						  fourth_loop (fourth_int + 1)
						end
					in
					fourth_loop (second_int + 1);
					third_loop (third_int + 1)
				  end
			  in
			  third_loop (first_int);
			  second_loop (second_int + 1)
			end
		in
		second_loop 0;
		first_loop (first_int + 1)
	  end
  in
  first_loop 0;
  print_char '\n'

let () =
  ft_print_comb2 ()
