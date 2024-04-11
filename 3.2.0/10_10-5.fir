FIRRTL version 3.2.0
circuit Top:
  module Top :
    input e : AsyncReset
    output r : Clock
    connect r, asClock(e)
