FIRRTL version 3.2.0
circuit MyModule :
  module MyModule :
    input a: UInt<1>
    input b: UInt<1>
    input c: UInt<1>
    input d: UInt<1>
    input c1: UInt<1>
    input c2: UInt<1>
    input c3: UInt<1>
    wire x: UInt<1>
    when c1 :
      connect x, a
    else when c2 :
      connect x, b
    else when c3 :
      connect x, c
    else :
      connect x, d
