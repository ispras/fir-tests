FIRRTL version 3.2.0
circuit RefProducer:
  module RefProducer :
    input a : UInt<4>
    input en : UInt<1>
    input clk : Clock
    output thereg : Probe<UInt>
    when en :
      reg myreg : UInt, clk
      connect myreg, a
      define thereg = probe(myreg)
