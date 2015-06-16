(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   leibniz_pi.ml                                      :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: niccheva <niccheva@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 13:24:39 by niccheva          #+#    #+#             *)
(*   Updated: 2015/06/16 16:04:43 by niccheva         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let leibniz_pi fl =
  let ft_abs f =
	if f < 0.0 then
	  f *. (-1.0)
	else
	  f
  in
  let rec ft_pow n e =
	let rec ft_pow_aux x e =
      if e = 0 then
		(float_of_int 1)
      else if e = 1 then
		x
      else
		ft_pow_aux (x *. n) (e - 1)
	in
	ft_pow_aux n e
  in
  let fct i =
	(ft_pow (-1.0) i) /. float_of_int((2 * i) + 1)
  in
  let pi () =
	4.0 *. (atan 1.0)
  in
  let ft_sum f =
	let rec loop i res =
	  if (ft_abs((4.0 *. res) -. (pi ()))) <= fl then
		i
	  else
		loop (i + 1) ( res +. (f i))
	in
	loop 1 1.0
  in
  ft_sum fct

let () =
  print_int (leibniz_pi 0.001);
  print_newline ()
