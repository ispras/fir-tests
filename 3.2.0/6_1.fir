FIRRTL version 3.2.0
circuit MyTop :
  extmodule Foo :
    parameter p1 = 0b101010
    parameter p2 = 0o52
    parameter p3 = 0d42
    parameter p4 = 0h2a
    parameter p5 = -0b101010
    parameter p6 = -0o52
    parameter p7 = -0d42
    parameter p8 = -0h2a
    
  module MyTop:
