FIRRTL version 3.2.0
circuit MyModule :
  module MyModule :
    input a: UInt<1>
    input b: UInt<1>
    input en: UInt<1>
    input clk : Clock
    when en :
      reg myreg1 : UInt<1>, clk
      connect myreg1, a
    else :
      reg myreg2 : UInt<1>, clk
      connect myreg2, b
