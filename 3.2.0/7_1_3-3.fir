FIRRTL version 3.2.0
circuit MyTop :
  module MyTop :
    input a : UInt<1>
    wire reset : UInt<1>
    connect reset, a
