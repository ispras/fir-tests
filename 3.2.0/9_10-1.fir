FIRRTL version 3.2.0
circuit Bar:
  module Foo :
    output p : Probe<UInt>
    ; ...

  module Bar :
    output x : UInt

    inst f of Foo
    connect x, read(f.p) ; indirectly access the probed data
