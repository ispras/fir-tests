FIRRTL version 3.2.0
circuit TypeAliasMod:
  type WordType = UInt<32>
  type ValidType = UInt<1>
  type Data = {w: WordType, valid: ValidType, ready: UInt<1>}
  type AnotherWordType = UInt<32>

  module TypeAliasMod:
    input in: Data
    output out: Data
    wire w1: AnotherWordType
    wire w2: ValidType
    wire w3: UInt<1>
    connect w1, in.w
    connect w2, in.valid
    connect w3, in.ready
    connect out.w, w1
    connect out.valid, w2
    connect out.ready, w3
