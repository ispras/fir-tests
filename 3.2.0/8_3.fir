FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input b: UInt<1>
    output a: UInt<1>
    wire mywire: UInt
    connect mywire, b
    connect a, mywire
