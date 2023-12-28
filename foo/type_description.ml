open! Ctypes

(* Put the types and constants for the C library here *)

module Types (F : Ctypes.TYPE) = struct
  open F

  module Person = struct
    type person

    let person : person structure typ = structure "Person"
    let name = field person "name" string
    let age = field person "age" int
    let () = seal person
  end
end
