FIRRTL version 3.2.0
circuit MatchConstruct :
  module MatchConstruct :
    input f: UInt<1>
    input c: UInt<1>
    input x: {|some: UInt<1>, none|}
    output a: UInt<1>
    match x:
      some(v):
        connect a, v
      none:
        connect a, f
