open! Ctypes
module Types = Types_generated

(* Put the function definitions of the C library here *)

module Functions (F : Ctypes.FOREIGN) = struct
  open F

  let say_hello =
    foreign "say_hello" (ptr Types.Person.person @-> returning void)
end
