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
;     8.14 Probes
;       8.14.1 Define
;         Example 1
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
