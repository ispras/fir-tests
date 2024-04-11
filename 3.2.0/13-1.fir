FIRRTL version 3.2.0
; Negative test
circuit MyTop:
  module Foo:
    input a: UInt<1>
    output b: UInt<1>
    connect b, b
    connect b, a
  module MyTop:
