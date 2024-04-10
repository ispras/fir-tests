FIRRTL version 3.2.0
circuit MyModule :
  module MyModule :
    input a_in: UInt<1>
    input b_in: UInt<1>
    input c_in: UInt<1>
    wire a: UInt
    wire b: UInt
    wire c: UInt<1>
    wire w: UInt
    invalidate w
    connect a, a_in
    connect b, b_in
    connect c, c_in
    when c :
      connect w, a
