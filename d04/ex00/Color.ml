(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Color.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/19 09:23:10 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/19 09:46:37 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type t = Spade | Heart | Diamond | Club

let all = [Spade ; Heart ; Diamond ; Club]

let toString = function
	| Spade		-> "S"
	| Heart		-> "H"
	| Diamond	-> "D"
	| Club		-> "C"

let toStringVerbose = function
	| Spade		-> "Spade"
	| Heart		-> "Heart"
	| Diamond	-> "Diamond"
	| Club		-> "Club"
