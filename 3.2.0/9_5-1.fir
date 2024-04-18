FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: UInt<1>
    input in_b: UInt<1>
    output out: {a: UInt, b: UInt}
    connect out.a, in
    connect out.b, in_b
