FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e : SInt<1>
    output r : Clock
    connect r, asClock(e)
