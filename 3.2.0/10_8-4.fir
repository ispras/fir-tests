FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e : Reset
    output r : UInt
    connect r, asUInt(e)
