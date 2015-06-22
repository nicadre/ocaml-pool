(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_ref.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/22 13:04:57 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/22 13:18:49 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type 'a ft_ref = {mutable content: 'a}

let return r = {content = r}

let get r = r.content

let set r v = r.content <- v

let bind r f =
  return (get (f r.content))

let fct r = return (r + 1)

let () =
  let r = return 42 in
  print_int (get r);
  print_newline ();
  set r 21;
  print_int (get r);
  print_newline ();
  let r2 = bind r fct in
  print_int (get r2);
  print_newline ()
