FIRRTL version 3.2.0
circuit MyTop :
  module MyTop :
    input a : UInt<1>
    wire reset : Reset
    connect reset, a
