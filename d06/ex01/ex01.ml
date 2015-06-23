(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ex01.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/23 10:33:03 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/23 12:23:53 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let djb2 s =
  let rec hash i acc =
	if i < String.length s then
	  hash (i + 1) (((acc lsl 5) + acc) + int_of_char (String.get s i))
	else
	  acc
  in
  hash 0 5381

module StringHash =
  struct
	type t = string
	let equal = (=)
	let hash x = djb2 x
  end

module StringHashtbl = Hashtbl.Make (StringHash)

let () =
  let ht = StringHashtbl.create 5 in
  let values = [ "Hello"; "world"; "42"; "Ocaml"; "H" ] in
  let pairs = List.map (fun s -> (s, String.length s)) values in
  List.iter (fun (k,v) -> StringHashtbl.add ht k v) pairs;
  StringHashtbl.iter (fun k v -> Printf.printf "k = \"%s\", v = %d\n" k v) ht
