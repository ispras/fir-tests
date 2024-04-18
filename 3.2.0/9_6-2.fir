FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: const UInt<1>
    input in_out: const UInt<1>[10]
    output out: const UInt[10]
    connect out, in_out
    connect out[4], in
