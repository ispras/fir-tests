FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input portx: {b: UInt<1>, c: UInt<1>}
    input porty: UInt<1>
    output myport: {b: UInt<1>, c: UInt<1>}
    connect myport, portx
