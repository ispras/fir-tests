FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input b: SInt<1>
    input clock: Clock
    output a: SInt<1>
    wire myclock: Clock
    connect myclock, clock
    reg myreg : SInt, myclock
    ; ...
    connect myreg, b
    connect a, myreg
