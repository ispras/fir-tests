FIRRTL version 3.2.0
circuit Foo:
  module Foo:
    input a: UInt<1>

    group Bar:
      node notA = not(a)
      group Baz:
      group Qux:
        group Quz:
          node notNotA = not(notA)
