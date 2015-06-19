(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   Card.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/19 10:22:44 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/19 12:05:47 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

module Color =
  struct
	type t = Spade | Heart | Diamond | Club

	let all = [Spade ; Heart ; Diamond ; Club]

	let toString = function
	  | Spade		-> "S"
	  | Heart		-> "H"
	  | Diamond		-> "D"
	  | Club		-> "C"

	let toStringVerbose = function
	  | Spade		-> "Spade"
	  | Heart		-> "Heart"
	  | Diamond		-> "Diamond"
	  | Club		-> "Club"
  end

module Value =
  struct
	type t = T2 | T3 | T4 | T5 | T6 | T7 | T8 | T9 | T10 | Jack | Queen | King | As

	let all = [T2 ; T3 ; T4 ; T5 ; T6 ; T7 ; T8 ; T9 ; T10 ; Jack ; Queen ; King ; As]

	let toInt = function
	  | T2		-> 1
	  | T3		-> 2
	  | T4		-> 3
	  | T5		-> 4
	  | T6		-> 5
	  | T7		-> 6
	  | T8		-> 7
	  | T9		-> 8
	  | T10		-> 9
	  | Jack	-> 10
	  | Queen	-> 11
	  | King	-> 12
	  | As		-> 13

	let toString = function
	  | T2		-> "2"
	  | T3		-> "3"
	  | T4		-> "4"
	  | T5		-> "5"
	  | T6		-> "6"
	  | T7		-> "7"
	  | T8		-> "8"
	  | T9		-> "9"
	  | T10		-> "10"
	  | Jack	-> "J"
	  | Queen	-> "Q"
	  | King	-> "K"
	  | As		-> "A"

	let toStringVerbose = function
	  | T2		-> "2"
	  | T3		-> "3"
	  | T4		-> "4"
	  | T5		-> "5"
	  | T6		-> "6"
	  | T7		-> "7"
	  | T8		-> "8"
	  | T9		-> "9"
	  | T10		-> "10"
	  | Jack	-> "Jack"
	  | Queen	-> "Queen"
	  | King	-> "King"
	  | As		-> "As"

	let next = function
	  | T2		-> T3
	  | T3		-> T4
	  | T4		-> T5
	  | T5		-> T6
	  | T6		-> T7
	  | T7		-> T8
	  | T8		-> T9
	  | T9		-> T10
	  | T10		-> Jack
	  | Jack	-> Queen
	  | Queen	-> King
	  | King	-> As
	  | As		-> invalid_arg "As hasn't next card"

	let previous = function
	  | T2		-> invalid_arg "2 hasn't prev card"
	  | T3		-> T2
	  | T4		-> T3
	  | T5		-> T4
	  | T6		-> T5
	  | T7		-> T6
	  | T8		-> T7
	  | T9		-> T8
	  | T10		-> T9
	  | Jack	-> T10
	  | Queen	-> Jack
	  | King	-> Queen
	  | As		-> King
  end

type t = Card of (Value.t * Color.t)

let newCard v c = Card(v, c)

let allSpades =
  begin
	let rec loop t acc =
	  if t = Value.T2 then
		(newCard t Color.Spade)::acc
	  else
		loop (Value.previous t) ((newCard t Color.Spade)::acc)
	in
	loop Value.As []
  end

let allHearts =
  begin
	let rec loop t acc =
	  if t = Value.T2 then
		(newCard t Color.Heart)::acc
	  else
		loop (Value.previous t) ((newCard t Color.Heart)::acc)
	in
	loop Value.As []
  end

let allDiamonds =
  begin
	let rec loop t acc =
	  if t = Value.T2 then
		(newCard t Color.Diamond)::acc
	  else
		loop (Value.previous t) ((newCard t Color.Diamond)::acc)
	in
	loop Value.As []
  end

let allClubs =
  begin
	let rec loop t acc =
	  if t = Value.T2 then
		(newCard t Color.Club)::acc
	  else
		loop (Value.previous t) ((newCard t Color.Club)::acc)
	in
	loop Value.As []
  end

let all = allSpades @ allHearts @ allDiamonds @ allClubs

let getValue = function | Card(v, _) -> v
let getColor = function | Card(_, c) -> c

let toString = function | Card(v, c) -> Printf.sprintf "%s%s" (Value.toString v) (Color.toString c)
let toStringVerbose = function | Card(v, c) -> Printf.sprintf "Card(%s, %s)" (Value.toStringVerbose v) (Color.toStringVerbose c)

let compare x = function
  | Card(v, _) -> match x with
				  | Card(vx, _) -> if (Value.toInt v) = (Value.toInt vx) then 0
								   else if (Value.toInt v) < (Value.toInt vx) then 1
								   else -1

let max x y =
  if (compare x y) >= 0 then x
  else y

let min x y =
  if (compare x y) <= 0 then x
  else y

let best = function
  | [] -> invalid_arg "list is empty"
  | h::t -> List.fold_left max h t

let isOf x color = match x with
	| Card(_, c) -> c = color

let isSpade x = isOf x Color.Spade
let isHeart x = isOf x Color.Heart
let isDiamond x = isOf x Color.Diamond
let isClub x = isOf x Color.Club
