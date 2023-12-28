This example shows an OCaml library "foo" which calls into some C "libfoo" library which we build from source.

I found the docs for ocaml-ctypes/dune pretty confusing, so hopefully this example is useful to others too.

Some other resources:
* [set up dune with ctypes](https://dune.readthedocs.io/en/stable/foreign-code.html)
* [ctypes docs once you have dune building](https://github.com/yallop/ocaml-ctypes/wiki/ctypes-tutorial)
* [ctypes example with system library](https://michael.bacarella.com/2022/02/19/dune-ctypes/)
* [vendored library, but rust?](https://github.com/tezos/tezos-mirror/blob/b58db3f667ca150eb39f50595a51dae2ef08f151/src/risc_v/pvm/dune)
