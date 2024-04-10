FIRRTL version 3.2.0
circuit Foo:
  module Foo:
    input x : UInt
    output y : {x: UInt, p: Probe<UInt>}
    output z : Probe<UInt>[2]

    wire w : UInt
    connect w, x
    connect y.x, w

    define y.p = probe(w)

    define z[0] = probe(w)
    define z[1] = probe(w)
