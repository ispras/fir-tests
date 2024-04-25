; Copyright 2024 ISP RAS (http://www.ispras.ru)
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;     http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

; Specification for the FIRRTL Language Version 3.2.0
;   8 Types
;     8.9 Memories
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
