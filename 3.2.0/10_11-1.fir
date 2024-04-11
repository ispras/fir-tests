FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e : UInt<1>
    output r : AsyncReset
    connect r, asAsyncReset(e)
