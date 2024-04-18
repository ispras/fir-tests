FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input a: UInt<10>
    input b: UInt<10>
    input x: UInt<1>
    output o1: UInt
    output o2: UInt
    output o3: UInt
    output o4: Clock
    connect o1, add(a, b)
    connect o2, shl(a, 3)
    connect o3, bits(a, 7, 4)
    connect o4, asClock(x)
