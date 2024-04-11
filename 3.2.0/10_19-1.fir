FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e1 : UInt<10>
    input e2 : UInt<10>
    output r1 : UInt<10>
    output r2 : UInt<10>
    output r3 : UInt<10>
    connect r1, and(e1, e2)
    connect r2, or(e1, e2)
    connect r3, xor(e1, e2)
