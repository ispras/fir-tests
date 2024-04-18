FIRRTL version 3.2.0
circuit MyTop :
  module MyModule :
    input a: UInt<16>[10]
    output b: UInt[10]
    input c: UInt<16>[10][20]
    b <= a
  module MyTop :
