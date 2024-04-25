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
;   13 Combinational Loops
;     Example 3
;       Negative test
FIRRTL version 3.2.0
circuit MyTop:
  module Foo3:
    input in_b : UInt<1>
    input in_c : UInt<1>
    wire a : UInt<2>
    wire b : UInt<1>
    wire c : UInt<1>
    connect b, in_b
    connect c, in_c
    connect a, cat(b, c)
    connect b, bits(a, 0, 0)
  module MyTop:
