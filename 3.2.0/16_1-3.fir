FIRRTL version 3.2.0
circuit IValue:
  module IValue :
    output o : UInt<8>
    input c : UInt<1>
    input v : UInt<8>

    wire a : UInt<8>
    when c :
      connect a, v
    else :
      connect a, UInt<3>("h42")
    connect o, a
