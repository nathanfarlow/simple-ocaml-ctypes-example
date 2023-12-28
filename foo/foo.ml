open! Ctypes

let make_person ~name ~age =
  let person = make C.Types.Person.person in
  setf person C.Types.Person.name name;
  setf person C.Types.Person.age age;
  person

let say_hello ~name ~age =
  let santa = make_person ~name ~age in
  C.Functions.say_hello (addr santa)
