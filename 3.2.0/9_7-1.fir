FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: UInt<2>[3]
    input n: UInt<2>
    output out: UInt
    connect out, in[n]
