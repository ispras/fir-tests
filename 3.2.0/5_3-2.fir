FIRRTL version 3.2.0
circuit Foo:
  declgroup Bar, bind:
    declgroup Baz, bind:
    declgroup Qux, bind:
      declgroup Quz, bind:
  module Foo:
    input a: UInt<1>

    group Bar:
      node notA = not(a)
      group Baz:
      group Qux:
        group Quz:
          node notNotA = not(notA)
