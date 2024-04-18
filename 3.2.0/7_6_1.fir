FIRRTL version 3.2.0
circuit MyTop:
  module MyTop :
    input a : const UInt<3>
    output b : const SInt
    input c : const SInt<3>
    output d : const {real: UInt<32>, imag : UInt<32>, other : const SInt}
    input e : const {real: UInt<32>, imag : UInt<32>, other : const SInt<1>}
    b <= c
    d <= e
