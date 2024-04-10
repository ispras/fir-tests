FIRRTL version 3.2.0
circuit MyTop :
  module MyModule :
    wire one_u : UInt<1>
    connect one_u, UInt<1>(0)
    wire one_s : SInt<1>
    connect one_s, SInt<1>(0)
  module MyTop :
