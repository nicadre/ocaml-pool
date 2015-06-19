(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/19 11:59:27 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/19 13:42:53 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
  let listc = Card.Color.all in
  let listv = Card.Value.all in
  let lista = Card.all in
  let lists = Card.allSpades in
  let carda = (Card.newCard (Card.Value.T2) (Card.Color.Spade)) in
  let cardb = (Card.newCard (Card.Value.King) (Card.Color.Club)) in
  let rec loop = function
	| []			-> print_newline ()
	| [x]			-> print_endline (Card.Color.toString x)
	| head::tail	-> print_endline (Card.Color.toString head); loop tail
  in
  let rec loop2 = function
	| []			-> print_newline ()
	| [x]			-> print_endline (Card.Color.toStringVerbose x)
	| head::tail	-> print_endline (Card.Color.toStringVerbose head); loop2 tail
  in
  let rec loop3 = function
	| []	-> print_newline ()
	| [x]	-> print_endline (Card.Value.toString x)
	| h::t	-> print_endline (Card.Value.toString h) ; loop3 t
  in
  let rec loop4 = function
	| []	-> print_newline ()
	| [x]	-> print_endline (Card.Value.toStringVerbose x)
	| h::t	-> print_endline (Card.Value.toStringVerbose h) ; loop4 t
  in
  let rec loop5 = function
	| []	-> print_newline ()
	| [x]	-> print_endline (Card.toStringVerbose x)
	| h::t	-> print_endline (Card.toStringVerbose h) ; loop5 t
  in
  let rec loop6 = function
	| []	-> print_newline ()
	| [x]	-> print_endline (Card.toString x)
	| h::t	-> print_endline (Card.toString h) ; loop6 t
  in
  loop3 listv;
  print_newline ();
  loop4 listv;
  print_newline ();
  print_endline (Card.Value.toStringVerbose (Card.Value.previous Card.Value.As));
  print_endline (Card.Value.toStringVerbose (Card.Value.next Card.Value.T2));
  print_newline ();
  loop listc;
  print_newline ();
  loop2 listc;
  print_newline ();
  loop5 lista;
  print_newline ();
  loop5 lists;
  print_newline ();
  loop6 lista;
  print_newline ();
  loop6 lists;
  print_newline ();
  print_endline (Card.Color.toStringVerbose (Card.getColor carda));
  print_endline (Card.toStringVerbose (Card.best lista));
  print_endline (Card.toStringVerbose (Card.max carda cardb));
  print_endline (Card.toStringVerbose (Card.min carda cardb));
  print_endline (string_of_bool (Card.isSpade carda));
  print_endline (string_of_bool (Card.isHeart carda));
  print_endline (string_of_bool (Card.isDiamond carda));
  print_endline (string_of_bool (Card.isClub carda));
