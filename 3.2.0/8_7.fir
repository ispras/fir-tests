FIRRTL version 3.2.0
circuit MyTop:
  module MyTop :
    input s: UInt<1>
    input x: SInt<1>
    input y: SInt<1>
    wire pred: UInt<1>
    wire a: SInt<1>
    wire b: SInt<1>
    pred <= s
    a <= x
    b <= y
    node mynode = mux(pred, a, b)
