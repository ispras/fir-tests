FIRRTL version 3.2.0
; Negative test
circuit Foo :
  module Foo:
    input in : Probe<UInt>
    output out : UInt

    connect out, read(in)
