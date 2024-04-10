FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input a: UInt<1>
    input b: UInt<1>
    output myport1: UInt<1>
    output myport2: UInt<1>

    connect myport1, a
    connect myport1, b
    connect myport2, a
