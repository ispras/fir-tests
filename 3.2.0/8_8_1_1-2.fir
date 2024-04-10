FIRRTL version 3.2.0
circuit MyModule :
  module MyModule :
    input a: UInt
    input b: UInt
    input en: UInt<1>
    wire x: UInt
    when en :
      connect x, a
    else :
      skip
