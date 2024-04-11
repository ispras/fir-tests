FIRRTL version 3.2.0
; Negative test
circuit MyTop:
  module Foo2 :
    input n1: UInt<2>
    input n2: UInt<2>
    wire tmp: UInt<1>
    wire vec: UInt<1>[3]
    connect tmp, vec[n1]
    connect vec[n2], tmp
  module MyTop:
