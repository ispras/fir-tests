FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input a: UInt<1>
    input b: UInt<1>
    input sel: UInt<1>
    output c: UInt<1>
    connect c, mux(sel, a, b)
