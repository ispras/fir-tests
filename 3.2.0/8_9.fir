FIRRTL version 3.2.0
circuit MemoryConstruct :
  module MemoryConstruct:
    input clock: Clock
    input rAddr: UInt<4>
    input rEn: UInt<1>
    input wData: {real:SInt<16>, imag:SInt<16>}
    input wMask: {real:UInt<1>, imag:UInt<1>}
    output rData1: {real:SInt<16>, imag:SInt<16>}
    output rData2: {real:SInt<16>, imag:SInt<16>}
    mem mymem :
      data-type => {real:SInt<16>, imag:SInt<16>}
      depth => 256
      reader => r1
      reader => r2
      writer => w
      read-latency => 0
      write-latency => 1
      read-under-write => undefined
    mymem.r1.clk <= clock
    mymem.r1.en <= rEn
    mymem.r1.addr <= rAddr
    mymem.r2.clk <= clock
    mymem.r2.en <= rEn
    mymem.r2.addr <= rAddr
    mymem.w.clk <= clock
    mymem.w.en <= rEn
    mymem.w.addr <= rAddr
    mymem.w.data <= wData
    mymem.w.mask <= wMask
    rData1 <= mymem.r1.data
    rData2 <= mymem.r2.data
