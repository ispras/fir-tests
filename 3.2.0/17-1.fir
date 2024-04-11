FIRRTL version 3.2.0
circuit Foo :
  module Foo :
    skip
  module Bar :
    input a: UInt<1>
    output b: UInt<1>
    when a:
      connect b, a
    else:
      connect b, not(a)
