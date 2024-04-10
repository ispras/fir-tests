FIRRTL version 3.2.0
circuit Foo:
  declgroup Bar, bind:
    declgroup Baz, bind:
  module Foo:
    output a: Probe<UInt<1>, Bar.Baz>
