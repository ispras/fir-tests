FIRRTL version 3.2.0
circuit Foo:
  module Foo :
    input x : {a: UInt<1>, flip b: UInt<1>}
    output y : {a: UInt<1>, flip b: UInt<1>}
    output xp : Probe<{a: UInt<1>, b: UInt<1>}> ; passive
    wire p : {a: UInt<1>, flip b: UInt<1>} ; p is not passive
    define xp = probe(p)
    connect p, x
    connect y, p
