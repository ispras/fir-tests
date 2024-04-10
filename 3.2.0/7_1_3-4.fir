FIRRTL version 3.2.0
circuit MyTop :
  module MyTop :
    input clock : Clock
    input reset : AsyncReset
    input x : UInt<8>
    output z : UInt<8>
    regreset y : UInt<8>, clock, reset, UInt(123)
    connect y, x
    connect z, y
    ; ...
