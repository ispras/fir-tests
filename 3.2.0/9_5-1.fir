FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: UInt<1>
    output out: {a: UInt<1>, b: UInt<1>}
    connect out.a, in
