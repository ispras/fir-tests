FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: UInt<1>
    input default: UInt<1>[2][2]
    input n: UInt<1>
    input m: UInt<1>
    output out: UInt[2][2]
    connect out, default
    connect out[n][m], in
