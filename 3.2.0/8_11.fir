FIRRTL version 3.2.0
circuit Foo:
  module Foo:
    input halt: UInt<1>
    input clk: Clock
    stop(clk, halt, 42) : optional_name
