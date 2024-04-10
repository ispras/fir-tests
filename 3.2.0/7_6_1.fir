FIRRTL version 3.2.0
circuit MyTop:
  module MyTop :
    input const UInt<3>
    input const SInt
    input const {real: UInt<32>, imag : UInt<32>, other : const SInt}
