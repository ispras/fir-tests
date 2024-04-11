FIRRTL version 3.2.0
; Negative test
circuit MyTop:
  module Foo3
    wire a : UInt<2>
    wire b : UInt<1>
    connect a, cat(b, c)
    connect b, bits(a, 0, 0)
  module MyTop:
