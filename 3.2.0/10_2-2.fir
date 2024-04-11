FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e1 : SInt<10>
    input e2 : SInt<10>
    output r : SInt
    connect r, sub(e1, e2)
