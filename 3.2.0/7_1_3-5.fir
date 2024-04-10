FIRRTL version 3.2.0
circuit MyTop :
  module MyTop :
    input a : UInt<1>
    output y : AsyncReset
    output z : Reset
    wire r : Reset
    connect r, a
    connect y, asAsyncReset(r)
    connect z, asUInt(y)
