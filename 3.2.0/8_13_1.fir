FIRRTL version 3.2.0
circuit Foo:
  module Foo:
    input clk: Clock
    input X: UInt<1>
    input Y: UInt<1>
    input Z_valid: UInt<1>
    wire pred: UInt<1>
    wire en: UInt<1>
    connect pred, eq(X, Y)
    connect en, Z_valid
    assert(clk, pred, en, "X equals Y when Z is valid") : optional_name
