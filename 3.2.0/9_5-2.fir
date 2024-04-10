FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: const UInt<1>
    output out: const {a: UInt<1>, b: UInt<1>}
    connect out.a, in
