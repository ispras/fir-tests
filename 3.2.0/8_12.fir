FIRRTL version 3.2.0
circuit Foo:
  module Foo:
    input cond: UInt<1>
    input a: UInt<1>
    input b: UInt<1>
    input clk: Clock
    printf(clk, cond, "a in hex: %x, b in decimal:%d.\n", a, b) : optional_name
