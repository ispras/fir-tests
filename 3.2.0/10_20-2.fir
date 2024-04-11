FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e : SInt<10>
    output r1 : UInt
    output r2 : UInt
    output r3 : UInt
    connect r1, andr(e)
    connect r2, orr(e)
    connect r3, xorr(e)
