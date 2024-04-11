FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e : UInt<10>
    output r : SInt
    connect r, asSInt(e)
