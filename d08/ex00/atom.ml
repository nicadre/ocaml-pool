(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   atom.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 09:29:29 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/25 13:24:33 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class virtual atom (name:string) (symbol:string) (atomic_number:int) =
	object(self)
	  method name = name
	  method symbol = symbol
	  method atomic_number = atomic_number

	  method to_string = self#name ^ " -> symbol: " ^ self#symbol ^ ", atomic number: " ^ (string_of_int self#atomic_number)
	  method equals (other:atom) = (self#atomic_number = other#atomic_number)
	end
