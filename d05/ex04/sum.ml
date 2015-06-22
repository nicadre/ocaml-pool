(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   sum.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 16:26:59 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/22 16:29:23 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let sum x y = x +. y

let () =
  print_float (sum 21.21 21.21); print_newline ();
  print_float (sum 21.21 nan); print_newline ();
  print_float (sum nan nan); print_newline ();
