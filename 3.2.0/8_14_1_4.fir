FIRRTL version 3.2.0
circuit ForwardDownwards:
  module UnusedInputRef :
    input r : Probe<UInt<1>>
  module ForwardDownwards :
    input in : UInt<1>

    inst u of UnusedInputRef
    define u.r = probe(in)
