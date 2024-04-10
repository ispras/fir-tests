FIRRTL version 3.2.0
circuit MyTop:
  module MyTop :
  module NoSubAccessesWithProbes :
    input x : {a : Probe<UInt[2]>, b : UInt}[3]
    input i : UInt
    input c : const UInt
    output p : Probe<UInt>

    ; Illegal: x[i], x[c]
    ; Illegal: x[0].a[i], x[0].a[c]

    ; Legal:
    define p = x[0].a[1]
