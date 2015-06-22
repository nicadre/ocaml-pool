(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   micronap.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 11:36:57 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/22 13:01:56 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let my_sleep () = Unix.sleep 1

let main ac av =
  if ac = 2 then
	begin
	  try
		for i = 0 to (int_of_string av.(1)) - 1 do
		  my_sleep ()
		done;
	  with
	  | Failure err -> exit (-1)
	end

let () = main (Array.length Sys.argv) Sys.argv
