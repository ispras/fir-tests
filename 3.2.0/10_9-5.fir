FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e : AsyncReset
    output r : SInt
    connect r, asSInt(e)
