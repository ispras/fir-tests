FIRRTL version 3.2.0
circuit MyTop:
  module MyTop :
    wire pred: UInt<1>
    wire a: SInt<1>
    wire b: SInt<1>
    node mynode = mux(pred, a, b)
