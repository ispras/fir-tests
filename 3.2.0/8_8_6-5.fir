FIRRTL version 3.2.0
circuit MyModule :
  module MyModule :
    input x_in: {a: UInt<1>, b: UInt<1>}
    input y_in: {a: UInt<1>, b: UInt<1>}
    input c_in: UInt<1>
    wire x: {a: UInt, b: UInt}
    wire y: {a: UInt, b: UInt}
    wire c: UInt<1>
    wire w: {a: UInt, b: UInt}
    connect c, c_in
    connect x, x_in
    connect y, y_in
    connect w, x
    when c :
      connect w, y
