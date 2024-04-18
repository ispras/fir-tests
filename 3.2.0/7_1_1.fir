FIRRTL version 3.2.0
circuit MyTop:
  module MyTop :
    ; ...
  module MyModule :
    output o1: UInt
    output o2: SInt
    input i1: UInt<10>
    input i2: SInt<10>
    o1 <= i1
    o2 <= i2
