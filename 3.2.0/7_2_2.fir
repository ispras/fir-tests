FIRRTL version 3.2.0
circuit MyTop :
  module MyModule :
    input x: {real: SInt<10>, imag: SInt<10>}
    output a: {word: UInt<32>, valid: UInt<1>, flip ready: UInt<1>}
    input c: {real: {word: UInt<32>, valid: UInt<1>, flip ready: UInt<1>},
              imag: {word: UInt<32>, valid: UInt<1>, flip ready: UInt<1>}}
    output myport: {a: UInt, flip b: {c: UInt, flip d: UInt}}
  module MyTop :
