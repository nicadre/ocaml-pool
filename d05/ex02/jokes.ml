(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   jokes.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 13:21:24 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/22 14:21:38 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let make_jokes () =
  let j = Array.make 5 "" in
  j.(0) <- "What is the number one cause of divorce? Marriage!";
  j.(1) <- "What do you call the security guards outside of Samsung. The guardians of the galaxy!";
  j.(2) <- "How many lives does a Nazi cat have? Nien!";
  j.(3) <- "Voldemort: Knock Knock.\nHarry Potter: Who's There?\nVoldemort: You Know.\nHarry Potter: You Know Who?\nVoldemort: Exactly!";
  j.(4) <- "Why did Mozart kill all his chickens?\nBecause when he asked them who the best composer was, they'd all say 'Bach bach bach!'";
  j


let () =
  let jokes = make_jokes () in
  let rand = Random.self_init (); Random.int 5 in
  print_endline jokes.(rand)
