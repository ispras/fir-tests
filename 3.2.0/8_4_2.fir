FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input b: SInt<1>
    input clock: Clock
    input reset: UInt<1>
    output a: SInt<1>
    wire myclock: Clock
    wire myreset: UInt<1>
    wire myinit: SInt
    connect myclock, clock
    connect myreset, reset
    connect myinit, SInt<1>(0)
    regreset myreg : SInt, myclock, myreset, myinit
    ; ...
    connect myreg, b
    connect a, myreg
