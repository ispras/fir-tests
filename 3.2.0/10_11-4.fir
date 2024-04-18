FIRRTL version 3.2.0
circuit Top:
  module Top :
    input a : AsyncReset
    output r : AsyncReset
    wire e : Reset
    connect e, a
    connect r, asAsyncReset(e)
