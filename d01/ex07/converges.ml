(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   converges.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 10:54:37 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/16 11:27:26 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec converges f x n =
  if n < 0 then
	false
  else if x = (f x) then
	true
  else
	converges f (f x) (n - 1)

let () =
  print_endline (string_of_bool (converges (( * ) 2) 2 5));
  print_endline (string_of_bool (converges (fun x -> x / 2) 2 3));
  print_endline (string_of_bool (converges (fun x -> x / 2) 2 2))
