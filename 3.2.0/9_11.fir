FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: UInt
    output r : Probe<UInt>
    define r = probe(in)
