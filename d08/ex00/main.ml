(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/25 10:11:35 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/25 11:11:54 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
  let h = new Hydrogen.hydrogen
  and al = new Aluminium.aluminium
  and li = new Lithium.lithium
  and mg = new Magnesium.magnesium
  and he = new Helium.helium
  and na = new Sodium.sodium
  and c = new Carbon.carbon
  and n = new Nitrogen.nitrogen
  and o = new Oxygen.oxygen in
  print_endline h#to_string;
  print_endline al#to_string;
  print_endline li#to_string;
  print_endline mg#to_string;
  print_endline he#to_string;
  print_endline na#to_string;
  print_endline c#to_string;
  print_endline n#to_string;
  print_endline o#to_string;
  print_endline (string_of_bool (o#equals c));
  print_endline (string_of_bool (c#equals c));
