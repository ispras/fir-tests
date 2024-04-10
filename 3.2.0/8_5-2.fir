FIRRTL version 3.2.0
circuit MyModule:
  module MyModule :
    input in: {flip a: UInt, b: UInt}
    output out: {flip a: UInt, b: UInt}
    wire w: {flip a: UInt, b: UInt}
    invalidate in.a
    invalidate out.b
    invalidate w.a
    invalidate w.b
