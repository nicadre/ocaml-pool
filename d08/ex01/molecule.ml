(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   molecule.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 11:14:57 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/25 11:56:43 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

class virtual molecule (name:string) (list:Atom.atom list) =
	object
	  method virtual name:string
	  method virtual formula:string

	  method 
	end
