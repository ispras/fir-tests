FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: UInt<2>[3]
    input n: UInt<2>
    output out: UInt
    when eq(n, UInt(0)) :
      connect out, in[0]
    else when eq(n, UInt(1)) :
      connect out, in[1]
    else when eq(n, UInt(2)) :
      connect out, in[2]
    else :
      invalidate out
