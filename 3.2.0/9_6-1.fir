FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: UInt<1>
    input in_out: UInt<1>[10]
    output out: UInt[10]
    connect out, in_out
    connect out[4], in
