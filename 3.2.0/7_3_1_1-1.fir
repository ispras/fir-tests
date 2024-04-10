FIRRTL version 3.2.0
; Negative test.
circuit ResetInferBad :
  module ResetInferBad :
    input in : Reset
    output out : AsyncReset
    connect out, read(probe(in))
