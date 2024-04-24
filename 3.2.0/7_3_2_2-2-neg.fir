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
;   7 Types
;     7.3 Reference Types
;       7.3.2 Input Probe References
;         7.3.2.2 Invalid Input Reference
;           Example 2
;             Negative test
FIRRTL version 3.2.0
circuit Top:
  module Top:
    input in : UInt<4>
    output out : UInt

    inst ud1 of UpDown
    connect ud1.in, in
    define ud1.in_ref = ud1.r1

    inst ud2 of UpDown
    connect ud2.in, in
    define ud2.in_ref = ud2.r2

    connect out, add(ud1.out, ud2.out)

  module UpDown:
    input in : UInt<4>
    input in_ref : Probe<UInt<4>>
    output r1 : Probe<UInt<4>>
    output r2 : Probe<UInt<4>>
    output out : UInt

    ; In ud1, this is UpDown.n1, in ud2 this is UpDown.n2 .
    ; However, this is not supported as it cannot be both at once.
    connect out, read(in_ref)
    node n1 = and(in, UInt<4>(1))
    node n2 = and(in, UInt<4>(3))
    define r1 = probe(n1)
    define r2 = probe(n2)
