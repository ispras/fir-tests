FIRRTL version 3.2.0
; Negative test
circuit MyTop:
  module Foo3:
    input in_b : UInt<1>
    input in_c : UInt<1>
    wire a : UInt<2>
    wire b : UInt<1>
    wire c : UInt<1>
    connect b, in_b
    connect c, in_c
    connect a, cat(b, c)
    connect b, bits(a, 0, 0)
  module MyTop:
