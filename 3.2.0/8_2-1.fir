FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input b: UInt<1>
    output a: UInt<1>
    input d: UInt<1>
    output c: UInt<1>
    connect a, b
    skip
    connect c, d
