FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: const UInt
    output out: const UInt[10]
    connect out[4], in
