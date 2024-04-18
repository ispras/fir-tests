FIRRTL version 3.2.0
circuit Foo:
  declgroup Bar, bind:

  module Baz:
    output _a: Probe<UInt<1>, Bar>

    wire a: UInt<1>

    group Bar:
      node notA = not(a)
      define _a = probe(notA)

  module Foo:

    inst baz of Baz

    group Bar:
      node _b = baz._a
