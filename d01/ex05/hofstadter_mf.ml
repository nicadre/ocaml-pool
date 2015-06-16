(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   hofstadter_mf.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 10:43:23 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/16 10:47:17 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec hfs_f n =
  if n < 0 then
	-1
  else if n = 0 then
	1
  else
	n - hfs_m (hfs_f (n - 1))

and hfs_m n =
  if n < 0 then
	-1
  else if n = 0 then
	0
  else
	n - hfs_f (hfs_m (n - 1))

let () =
  print_int (hfs_m 0);
  print_newline ();
  print_int (hfs_f 0);
  print_newline ();
  print_int (hfs_m 4);
  print_newline ();
  print_int (hfs_f 4);
  print_newline ()
