FIRRTL version 3.2.0
circuit MyTop :
  module MyModule :
    wire zero_u : UInt<0>
    invalidate zero_u
    wire zero_s : SInt<0>
    invalidate zero_s

    wire one_u : UInt<1>
    connect one_u, zero_u
    wire one_s : SInt<1>
    connect one_s, zero_s
  module MyTop :
