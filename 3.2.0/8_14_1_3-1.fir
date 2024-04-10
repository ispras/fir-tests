FIRRTL version 3.2.0
circuit Foo:
  module Foo :
    output p : Probe<UInt>
    ; ...

  module Forward :
    output p : Probe<UInt>
    inst f of Foo
    define p = f.p
