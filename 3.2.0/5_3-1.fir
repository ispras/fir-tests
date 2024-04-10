FIRRTL version 3.2.0
circuit Foo:
  declgroup Bar, bind: ; Declaration of group Bar with convention "bind"

  module Foo:
    input a: UInt<1>

    group Bar:         ; Definition of group Bar inside module Foo
      node notA = not(a)
