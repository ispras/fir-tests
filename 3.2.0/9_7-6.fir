FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: UInt<1>
    input default: UInt<1>[2][2]
    input n: UInt<1>
    input m: UInt<1>
    output out: UInt[2][2]
    connect out, default
    when and(eq(n, UInt(0)), eq(m, UInt(0))) :
      connect out[0][0], in
    else when and(eq(n, UInt(0)), eq(m, UInt(1))) :
      connect out[0][1], in
    else when and(eq(n, UInt(1)), eq(m, UInt(0))) :
      connect out[1][0], in
    else when and(eq(n, UInt(1)), eq(m, UInt(1))) :
      connect out[1][1], in
