FIRRTL version 3.2.0
circuit Refs:
  module Refs:
    input clock: Clock
    output a : Probe<{x: UInt<1>, y: UInt<1>}> ; read-only ref. to wire 'p'
    output b : RWProbe<UInt<1>> ; force-able ref. to node 'q', inferred width.
    output c : Probe<UInt<1>> ; read-only ref. to register 'r'
    output d : Probe<Clock> ; ref. to input clock port

    wire p : {x: UInt<1>, flip y : UInt<1>}
    define a = probe(p) ; probe is passive
    node q = UInt<1>(0)
    define b = rwprobe(q)
    reg r: UInt<1>, clock
    define c = probe(r)
    define d = probe(clock)
