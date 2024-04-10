FIRRTL version 3.2.0
circuit Top :
  module MyModule :
    input a: UInt<1>
    output b: UInt<1>
    connect b, a
  module Top :
    input a: UInt<1>
    output b: UInt<1>
    inst w of MyModule
    connect w.a, a
    connect b, w.b
