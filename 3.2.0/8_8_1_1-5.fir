FIRRTL version 3.2.0
circuit MyModule :
  module MyModule :
    output a: UInt<1>
    input b: UInt<1>
    input c: UInt<1>
    output e: UInt<1>
    input f: UInt<1>
    a <= f
    e <= b
    when c :
      connect a, b
    else :
      connect e, f
