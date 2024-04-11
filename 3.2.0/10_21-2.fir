FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e1 : SInt<10>
    input e2 : SInt<10>
    output r : UInt
    connect r, cat(e1, e2)
