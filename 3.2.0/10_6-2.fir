FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e1 : SInt<10>
    input e2 : SInt<10>
    output r1 : UInt<1>
    output r2 : UInt<1>
    output r3 : UInt<1>
    output r4 : UInt<1>
    connect r1, lt(e1, e2)
    connect r2, leq(e1, e2)
    connect r3, gt(e1, e2)
    connect r4, geq(e1, e2)
