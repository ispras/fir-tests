FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: UInt<2>
    input default: UInt<2>[3]
    input n: UInt<2>
    output out: UInt[3]
    connect out, default
    when eq(n, UInt(0)) :
      connect out[0], in
    else when eq(n, UInt(1)) :
      connect out[1], in
    else when eq(n, UInt(2)) :
      connect out[2], in
