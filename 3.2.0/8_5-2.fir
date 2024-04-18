FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: {flip a: UInt<1>, b: UInt<1>}
    output out: {flip a: UInt<1>, b: UInt<1>}
    wire w: {flip a: UInt<1>, b: UInt<1>}
    invalidate in.a
    invalidate out.b
    invalidate w.a
    invalidate w.b
