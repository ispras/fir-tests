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
;   18 FIRRTL Compiler Implementation Details
;     18.1 Module Conventions
;       18.1.1 The “Scalarized” Convention
;         Example 4
FIRRTL version 3.2.0
circuit Top :
  module Top :
    input a_b_0: UInt<1> ; a.b[0]
    input a_b_1: UInt<1> ; a.b[1]
    input a_b_0_0: UInt<2> ; a.b_0
    input a_b_1_0: UInt<3> ; a.b_1
    input a_b_0_1: UInt<4> ; a_b[0]
    input a_b_1_1: UInt<4> ; a_b[1]
    input a_b_0_2: UInt<5> ; a_b_0
