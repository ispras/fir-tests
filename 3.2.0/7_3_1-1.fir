FIRRTL version 3.2.0
circuit MyTop:
  module MyTop :
  module MyModule :
    input a : Probe<UInt> ; readable reference to unsigned integer with inferred width
    input b : RWProbe<{x: {y: UInt}}> ; readable and forceable reference to bundle
    input c : Probe<UInt, A.B> ; readable reference associated with group A.B
