FIRRTL version 3.2.0
circuit MyModule :
  module MyModule :
    input a: UInt<1>
    input b: UInt<1>
    input en: UInt<1>
    wire x: UInt
    x <= b
    when en :
      connect x, a
    else :
      skip
