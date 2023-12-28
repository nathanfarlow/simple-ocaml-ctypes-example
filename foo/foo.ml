open! Ctypes

(* After some processing, your types and functions modules will be available
   through the C module. Now you can wrap them up in a nice OCaml wrapper. None
   of these module names (Type_description, Function_description, C, C.Types, or
   C.Functions) are special; you can change then in the dune file. *)

let make_person ~name ~age =
  let person = make C.Types.Person.person in
  setf person C.Types.Person.name name;
  setf person C.Types.Person.age age;
  person

let say_hello ~name ~age =
  let santa = make_person ~name ~age in
  C.Functions.say_hello (addr santa)
