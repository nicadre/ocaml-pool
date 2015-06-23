(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex02.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/23 11:51:56 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/23 12:24:34 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module type PAIR = sig val pair : (int * int) end

module type VAL = sig val x : int end

module type MAKEPROJECTION =
  functor (Pair : PAIR) ->
  VAL

module MakeFst : MAKEPROJECTION =
  functor (Pair : PAIR) ->
  struct
	let x = fst Pair.pair
  end

module MakeSnd : MAKEPROJECTION =
  functor (Pair : PAIR) ->
  struct
	let x = snd Pair.pair
  end

module Pair : PAIR = struct let pair = ( 21, 42 ) end

module Fst : VAL = MakeFst (Pair)

module Snd : VAL = MakeSnd (Pair)

let () = Printf.printf "Fst.x = %d, Snd.x = %d\n" Fst.x Snd.x
