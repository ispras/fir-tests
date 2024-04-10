FIRRTL version 3.2.0
circuit MyModule :
  module MyModule :
    input b: UInt<1>
    input f: UInt<1>
    input c: UInt<1>
    output a: UInt<1>
    output e: UInt<1>
    connect a, c
    connect e, c
    when c : connect a, b else : connect e, f
