FIRRTL version 3.2.0
circuit Bar:
  module Foo :
    output p : Probe<{a: UInt, b: UInt}>
    ; ...

  module Bar :
    output x : UInt

    inst f of Foo
    connect x, read(f.p.b) ; indirectly access the probed data
    connect x, add(read(f.p).a, read(f.p).b)
