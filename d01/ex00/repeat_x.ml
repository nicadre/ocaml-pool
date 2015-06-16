(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_x.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 09:06:21 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/16 09:10:52 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec repeat_x x =
  if x < 0 then
	"Error"
  else if x = 0 then
	""
  else
	"x" ^ (repeat_x (x - 1))

let () =
  print_endline (repeat_x (-1));
  print_endline (repeat_x 0);
  print_endline (repeat_x 3);
  print_endline (repeat_x 42)
