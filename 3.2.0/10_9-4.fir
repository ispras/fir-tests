FIRRTL version 3.2.0
circuit Top:
  module Top :
    input a : AsyncReset
    output r : SInt
    wire e : Reset
    connect e, a
    connect r, asSInt(e)
