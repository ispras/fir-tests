FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e1 : UInt<10>
    input e2 : UInt<10>
    output r : UInt
    connect r, div(e1, e2)
