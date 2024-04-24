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
;       8.14.2 Force and Release
;         8.14.2.3 Non-Passive Force Target
FIRRTL version 3.2.0
circuit Top:
  module Top:
    input x : {a: UInt<2>, flip b: UInt<2>}
    output y : {a: UInt<2>, flip b: UInt<2>}
    inst d of DUT
    connect d.x, x
    connect y, d.y

    wire val : {a: UInt<2>, b: UInt<2>}
    connect val.a, UInt<2>(1)
    connect val.b, UInt<2>(2)

    ; Force takes a RWProbe and overrides the target with 'val'.
    force_initial(d.xp, val)

  module DUT :
    input x : {a: UInt<2>, flip b: UInt<2>}
    output y : {a: UInt<2>, flip b: UInt<2>}
    output xp : RWProbe<{a: UInt<2>, b: UInt<2>}>

    ; Force drives p.a, p.b, y.a, and x.b, but not y.b and x.a
    wire p : {a: UInt<2>, flip b: UInt<2>}
    define xp = rwprobe(p)
    connect p, x
    connect y, p
