FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: UInt
    input default: UInt[3]
    input n: UInt<2>
    output out: UInt[3]
    connect out, default
    connect out[n], in
