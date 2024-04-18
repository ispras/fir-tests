FIRRTL version 3.2.0
circuit Top:
  module Top :
    input a : AsyncReset
    output r : UInt
    wire e : Reset
    connect e, a
    connect r, asUInt(e)
